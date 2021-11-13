<?php
namespace app\admin\controller;

use think\facade\Config;
use app\common\controller\Backend;
use app\admin\model\AuthGroupAccess;//引入
use think\facade\Db;//引入db类
use app\common\model\Domain as DomainModel;
use app\admin\controller\general;
/**
 * 域名管理.
 *
 * @icon fa fa-circle-o
 */
class Domain extends Backend
{ 
	protected $relationSearch = true;

    protected $searchFields = 'id,project,affairs,domain';
	//初始化
    public function _initialize()
    {
        parent::_initialize();
        $this->model = new DomainModel();

    }

    //域名列表
	public function index(){
		$this->request->filter(['strip_tags']);
		 if ($this->request->isAjax()) {
		 	if ($this->request->request('keyField')) {
                return $this->selectpage();
            }
		 $list  = $this->model->select();
		 $total = $this->model->count();
		 $result = ['total' => $total,'rows' => $list];
         $this->view->assign('result', $result);
          return json($result);
          }
          return $this->view->fetch();
	}

    /**
     * 添加.
     */
     public function add()
    {
       if ($this->request->isPost()) {
            $params = $this->request->post('row/a');
                $result = $this->model->save($params);
                if ($result === false) {
                    $this->error($this->model->getError());
                }
                $this->success();
            
            $this->error();
        }
        return $this->view->fetch();
    }
    //编辑
    public function edit($ids = null)
    {
        if ($this->request->isPost()) {
            $this->token();
        }
        $row  = $this->model->get($ids);
        if (!$row) {
            $this->error(__('No Results were found'));
        }


        return parent::edit($ids);
    }
    //删除
        public function del($ids = '')
    {
        if ($ids) {
        
            $count = $this->model->where(['id'=>$ids])->delete();
            if ($count) {
                $this->success();
            }
        }
        $this->error();
    }
    //备份网站
    public function daimport($ids=''){
     if($ids){
          $row  = $this->model->get($ids);
          $dataaddress=$row['databaset'].':3306';
          $datauser=$row['datauser'];
          $dataname=$row['dataname'];
          $datapassword=$row['datapassword'];
          $cfg_db_language = 'utf8';
          $mul=app()->getRootPath().'public'.DS.'database'.DS.$row['project'];
          if(!is_dir($mul)){
              mkdir($mul,7777,true);
              chmod($mul,7777);
          }
          $to_file_name = $dataname.".sql";
          $to_file_name = $mul.DS.date("Y-m-d s",time()).$to_file_name;
        
         if (mysqli_connect_error($dataaddress,$datauser,$datapassword)) {
            echo "对不起您的数据库信息有误！请检查！";
            exit;
          }
         $link = mysqli_connect($dataaddress,$datauser,$datapassword);
          mysqli_select_db($link,$dataname);
         //选择编码
          mysqli_set_charset($link,'UTF8');
          $query = "show tables from $dataname";
          $tables = mysqli_query($link,$query);

          //将这些表记录到一个数组 
          $tabList = array(); 
          while($row = mysqli_fetch_row($tables)){ $tabList[] = $row[0]; } 
              echo "运行中，请耐心等待...<br/>"; $info = "-- ----------------------------\r\n"; 
              $info .= "-- 备份日期：".date("Y-m-d H:i:s",time())."\r\n"; 
            
              $info .= "-- ----------------------------\r\n\r\n"; 
              file_put_contents($to_file_name,$info,FILE_APPEND); 
                // print_r($tabList);exit;
          //将每个表的表结构导出到文件 
          foreach($tabList as $val){ 
            $sql = "show create table ".$val; 
            $res = mysqli_query($link,$sql); 
            $row = mysqli_fetch_array($res);
             $info = "-- ----------------------------\r\n";
              $info .= "-- Table structure for `".$val."`\r\n"; 
              $info .= "-- ----------------------------\r\n"; 
              $info .= "DROP TABLE IF EXISTS `".$val."`;\r\n"; 
              $sqlStr = $info.$row[1].";\r\n\r\n"; 
          //追加到文件
              file_put_contents($to_file_name,$sqlStr,FILE_APPEND); //释放资源
              mysqli_free_result($res); } //将每个表的数据导出到文件
              foreach($tabList as $val){ $sql = "select * from ".$val; $res = mysqli_query($link,$sql);
           //如果表中没有数据，则继续下一张表 
             if(mysqli_num_rows($res)<1) 
                continue; 
                $info = "-- ----------------------------\r\n"; 
                $info .= "-- Records for `".$val."`\r\n"; 
                $info .= "-- ----------------------------\r\n"; 
                file_put_contents($to_file_name,$info,FILE_APPEND);
            //读取数据
             while($row = mysqli_fetch_row($res)){ 
                $sqlStr = "INSERT INTO ".$val." VALUES ("; 
                foreach($row as $zd){ $sqlStr .= "'".$zd."', "; 
             } 
             //去掉最后一个逗号和空
              $sqlStr = substr($sqlStr,0,strlen($sqlStr)-2); $sqlStr .= ");\r\n"; 
              file_put_contents($to_file_name,$sqlStr,FILE_APPEND);
            } 
              //释放资源 
              mysqli_free_result($res); 
              file_put_contents($to_file_name,"\r\n",FILE_APPEND); } 
              $infos=Db::name('domain')->where(['id'=>$ids])->find();
              $dts['time']=date("Y-m-d",time());
              $dts['lasttime']=$infos['time'];
              $dts['count']=count($tabList);
              $info=Db::name('domain')->where(['id'=>$ids])->save($dts);
              echo $row['project'].'数据库:'.$dataname.".sql导出成功!,请关闭本窗口！"; 
     }
    }
    
 
    //备份数据库
    public function daexport($ids=""){
    	  $ids=input('id');
        return  $ids;exit;
       if($ids){
         $row  = $this->model->get($ids);
          $username=$row['ftpuser'];
          $server=$row['ftp'];
          $password=$row['ftpassd'];
          $mul=app()->getRootPath().'public'.DS.'database'.DS.$row['project'];
          // if(!is_dir($mul)){
          //     mkdir($mul,7777,true);
          //     chmod($mul,777);
          // }
          // $res=getfiles($ftp,$ftpuser,$ftpassd,$mul,'www');
           // $config=['hostname'=>$server,'username'=>$username,'password'=>$password,'port'=>21];
           // $res=getfiles($config);
           // echo "11";exit;
            return "<script>window.location.href='ftp://$username:$password@$server'</script>";
          // $url="ftp://$username:$password@$server";
          $this->view->assign('url', $url);
          return $this->view->fetch();
       }
    }
}