<?php

namespace app\index\controller;
use app\common\controller\Frontend;
use app\common\model\Index as IndexModel;
use think\facade\Db;
require_once '../extend/ftp/Ftp.php';
class Index extends Frontend
{
    protected $noNeedLogin = '*';
    protected $noNeedRight = '*';
    protected $layout = '';
    public function _initialize()
    {
        parent::_initialize();
        $this->model = new IndexModel();

    }
    public function index(){
        // $this->request->filter(['strip_tags']);
        
         
         $list  = $this->model->select();
         $total = $this->model->count();
         // $result = ['total' => $total,'rows' => $list];
         $this->view->assign('result', $list);
         
         
          return $this->view->fetch();
    }
    public function down(){
       $ids=input('id');
       if($ids){
         $row  = $this->model->get($ids);
          $username=$row['ftpuser'];
          $server=$row['ftp'];
          $password=$row['ftpassd'];
          $mul=app()->getRootPath().'public'.DS.'database'.DS.$row['project'];
          if(!is_dir($mul)){
              mkdir($mul,7777,true);
              chmod($mul,777);
          }
          // $res=getfiles($ftp,$ftpuser,$ftpassd,$mul,'www');
           $config=['hostname'=>$server,'username'=>$username,'password'=>$password,'port'=>21];
           // $res=getfiles($config);
      
          return "<script>window.location.href='ftp://$username:$password@$server'</script>";
       }
    }
    public function import(){
        $ids=input('id');
     if($ids){
          $row  = $this->model->get($ids);
          $dataaddress=$row['databaset'].':3306';
          $datauser=$row['datauser'];
          $dataname=$row['datauser'];
          $datapassword=$row['datapassword'];
          $cfg_db_language = 'utf8';
          $mul=app()->getRootPath().'public'.DS.'database'.DS.$row['project'];
          if(!is_dir($mul)){
              mkdir($mul,0777,true);
              chmod($mul,0777);
          }
          $to_file_name = $dataname.".sql";
          $to_file_name = $mul.DS.date("Y-m-d",time()).$to_file_name;
         if(file_exists($to_file_name)){
            echo "每天只能备份一次！"; 
            echo "<a href='http://domain.wyzdjg.top'>返回</a>";
            exit;
         }
         // END 配置
         //链接数据库
        
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
          //将每个表的表结构导出到文件 
          foreach($tabList as $val){ 
            $sql = "show create table ".$val; 
            $res = mysqli_query($link,$sql); 
            $row = mysqli_fetch_array($res);
            $info = "-- ----------------------------\r\n";
            $info .= "-- Table structure for `".$val."`\r\n"; 
            $info .= "-- ----------------------------\r\n"; 
            $info .="-----php+mysql版本：".PHP_VERSION.'+'.mysqli_get_server_info($link).";\r\n";
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
                $sqlStr = "INSERT INTO `".$val."` VALUES ("; 
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
              $info=Db::name('domain')->where(['id'=>$ids])->save($dts);
              echo $row['project'].'数据库:'.$dataname.".sql导出成功!,请关闭本窗口！"; 
            //   echo "<a href='$to_file_name'>下载sql文件</a>";
              echo "<a href='http://domain.wyzdjg.top'>返回</a>";
          // print_r($dataaddress);exit;
     }
    }
}
