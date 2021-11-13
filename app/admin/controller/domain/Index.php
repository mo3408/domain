<?php
namespace app\admin\controller\domain;
use app\common\controller\Backend;

/**
 * 域名管理.
 *
 * @icon fa fa-circle-o
 */
class Domain extends Backend
{
	public function index(){
		return $this->view->fetch();
	}
}