<?php
/**
 * 仿写CodeIgniter的FTP类
 * FTP基本操作：
 * 1) 登陆;           connect
 * 2) 当前目录文件列表;  filelist
 * 3) 目录改变;         chgdir
 
 *
 * @author quanshuidingdang
 */
class Ftp {
 
    private $hostname   = '';
    private $username   = '';
    private $password   = '';
    private $port       = 21;
    private $passive    = TRUE;
    private $debug      = TRUE;
    private $conn_id    = FALSE;
 
    /**
     * 构造函数
     *
     * @param   array   配置数组 : $config = array('hostname'=>'','username'=>'','password'=>'','port'=>''...);
     */
    public function __construct($config = array()) {
        if(count($config) > 0) {
            $this->_init($config);
        }
    }
 
    /**
     * FTP连接
     *
     * @access  public
     * @param   array   配置数组
     * @return  boolean
     */
    public function connect($config = array()) {
        if(count($config) > 0) {
            $this->_init($config);
        }
 
        if(FALSE === ($this->conn_id = @ftp_connect($this->hostname,$this->port))) {
            if($this->debug === TRUE) {
                $this->_error("ftp_unable_to_connect");
            }
            return FALSE;
        }
 
        if( ! $this->_login()) {
            if($this->debug === TRUE) {
                $this->_error("ftp_unable_to_login");
            }
            return FALSE;
        }
 
        if($this->passive === TRUE) {
            ftp_pasv($this->conn_id, TRUE);
        }
 
        return TRUE;
    }
    /**
     * 获取目录文件列表
     *
     * @access  public
     * @param   string  目录标识(ftp)
     * @return  array
     */
    public function filelist($path) {
        if( ! $this->_isconn()) {
            return FALSE;
        }
        return @ftp_nlist($this->conn_id, $path);
    }
    //递归查询所有目录下的文件
    public function dir_switch($path = null){
//        //路径
        $path = empty($path)?'.':$path;
        //查看目录文件
        $catalog = $this->filelist($path);
//        return $catalog;
        $list = array();
        $info = array();
        if($catalog){
            //递归查
            foreach ($catalog as $val){
                //判断是否是为目录
                if($this->isFtpDir($val)){
                    $info = $this->dir_switch($val);
                    if($info){
                        foreach ($info as $v){
                            $list[] = $v;
                        }
                    }
                }else{
                    $list[] = $val;
                }
//                sleep(1);
            }
            return $list;
        }
    }
    /**
     * 目录改变
     *
     * @access  public
     * @param   string  目录标识(ftp)
     * @param   boolean
     * @return  boolean
     */
    public function chgdir($path = '', $supress_debug = FALSE)
    {
        if ($path == '' OR !$this->_isconn()) {
            return FALSE;
        }
        $result = @ftp_chdir($this->conn_id, $path);
        if ($result === FALSE) {
            if ($this->debug === TRUE AND $supress_debug == FALSE) {
                $this->_error("ftp_unable_to_chgdir:dir[" . $path . "]");
            }
            return FALSE;
        }
        return @ftp_pwd($this->conn_id);
//        return TRUE;
    }
    //查看文件是否存在
    function isFtpDir($filename)
    {
        if(ftp_size($this->conn_id,$filename)!=-1)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    /**
     * 关闭FTP
     *
     * @access  public
     * @return  boolean
     */
    public function close() {
        if( ! $this->_isconn()) {
            return FALSE;
        }
 
        return @ftp_close($this->conn_id);
    }
 
    /**
     * FTP成员变量初始化
     *
     * @access  private
     * @param   array   配置数组
     * @return  void
     */
    private function _init($config = array()) {
        foreach($config as $key => $val) {
            if(isset($this->$key)) {
                $this->$key = $val;
            }
        }
 
        //特殊字符过滤
        $this->hostname = preg_replace('|.+?://|','',$this->hostname);
    }
 
    /**
     * FTP登陆
     *
     * @access  private
     * @return  boolean
     */
    private function _login() {
        return @ftp_login($this->conn_id, $this->username, $this->password);
    }
 
    /**
     * 判断con_id
     *
     * @access  private
     * @return  boolean
     */
    private function _isconn() {
        if( ! is_resource($this->conn_id)) {
            if($this->debug === TRUE) {
                $this->_error("ftp_no_connection");
            }
            return FALSE;
        }
        return TRUE;
    }
 
    /**
     * 从文件名中获取后缀扩展
     *
     * @access  private
     * @param   string  目录标识
     * @return  string
     */
    private function _getext($filename) {
        if(FALSE === strpos($filename, '.')) {
            return 'txt';
        }
 
        $extarr = explode('.', $filename);
        return end($extarr);
    }
 
    /**
     * 从后缀扩展定义FTP传输模式  ascii 或 binary
     *
     * @access  private
     * @param   string  后缀扩展
     * @return  string
     */
    private function _settype($ext) {
        $text_type = array (
            'txt',
            'text',
            'php',
            'phps',
            'php4',
            'js',
            'css',
            'htm',
            'html',
            'phtml',
            'shtml',
            'log',
            'xml'
        );
 
        return (in_array($ext, $text_type)) ? 'ascii' : 'binary';
    }
 
    /**
     * 错误日志记录
     *
     * @access 
     * @return  boolean
     */
    private function _error($msg) {
        return @file_put_contents('ftp_err.log', "date[".date("Y-m-d H:i:s")."]-hostname[".$this->hostname."]-username[".$this->username."]-password[".$this->password."]-msg[".$msg."]\n", FILE_APPEND);
    }
}