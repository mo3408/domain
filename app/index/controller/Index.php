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
            echo "???????????????????????????"; 
            echo "<a href='http://domain.wyzdjg.top'>??????</a>";
            exit;
         }
         // END ??????
         //???????????????
        
         if (mysqli_connect_error($dataaddress,$datauser,$datapassword)) {
            echo "???????????????????????????????????????????????????";
            exit;
          }
         $link = mysqli_connect($dataaddress,$datauser,$datapassword);
          mysqli_select_db($link,$dataname);
         //????????????
          mysqli_set_charset($link,'UTF8');
          $query = "show tables from $dataname";
          $tables = mysqli_query($link,$query);
          //????????????????????????????????? 
          $tabList = array(); 
          while($row = mysqli_fetch_row($tables)){ $tabList[] = $row[0]; } 
              echo "???????????????????????????...<br/>"; $info = "-- ----------------------------\r\n"; 
              $info .= "-- ???????????????".date("Y-m-d H:i:s",time())."\r\n"; 
              $info .= "-- ----------------------------\r\n\r\n"; 
              file_put_contents($to_file_name,$info,FILE_APPEND); 
          //??????????????????????????????????????? 
          foreach($tabList as $val){ 
            $sql = "show create table ".$val; 
            $res = mysqli_query($link,$sql); 
            $row = mysqli_fetch_array($res);
            $info = "-- ----------------------------\r\n";
            $info .= "-- Table structure for `".$val."`\r\n"; 
            $info .= "-- ----------------------------\r\n"; 
            $info .="-----php+mysql?????????".PHP_VERSION.'+'.mysqli_get_server_info($link).";\r\n";
            $info .= "DROP TABLE IF EXISTS `".$val."`;\r\n"; 
            $sqlStr = $info.$row[1].";\r\n\r\n"; 
          //???????????????
              file_put_contents($to_file_name,$sqlStr,FILE_APPEND); //????????????
              mysqli_free_result($res); } //????????????????????????????????????
              foreach($tabList as $val){ $sql = "select * from ".$val; $res = mysqli_query($link,$sql);
           //???????????????????????????????????????????????? 
             if(mysqli_num_rows($res)<1) 
                continue; 
                 $info = "-- ----------------------------\r\n"; 
                 $info .= "-- Records for `".$val."`\r\n"; 
                 $info .= "-- ----------------------------\r\n"; 
                 file_put_contents($to_file_name,$info,FILE_APPEND);
            //????????????
             while($row = mysqli_fetch_row($res)){ 
                $sqlStr = "INSERT INTO `".$val."` VALUES ("; 
                foreach($row as $zd){ $sqlStr .= "'".$zd."', "; 
             } 
             //??????????????????????????????
              $sqlStr = substr($sqlStr,0,strlen($sqlStr)-2); $sqlStr .= ");\r\n"; 
              file_put_contents($to_file_name,$sqlStr,FILE_APPEND);
            } 
              //???????????? 
              mysqli_free_result($res); 
              file_put_contents($to_file_name,"\r\n",FILE_APPEND); } 
              $infos=Db::name('domain')->where(['id'=>$ids])->find();
              $dts['time']=date("Y-m-d",time());
              $dts['lasttime']=$infos['time'];
              $info=Db::name('domain')->where(['id'=>$ids])->save($dts);
              echo $row['project'].'?????????:'.$dataname.".sql????????????!,?????????????????????"; 
            //   echo "<a href='$to_file_name'>??????sql??????</a>";
              echo "<a href='http://domain.wyzdjg.top'>??????</a>";
          // print_r($dataaddress);exit;
     }
    }
}
