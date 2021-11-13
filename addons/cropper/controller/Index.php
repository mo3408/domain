<?php

namespace addons\cropper\controller;

use think\addons\Controller;
use think\facade\Config;
use think\facade\Event;
use think\facade\Lang;

/**
 * 图片裁剪
 *
 */
class Index extends Controller
{

    protected $model = null;

    public function _initialize()
    {
        // 语言检测
        $lang = strip_tags(Lang::getLangSet());
        $site = Config::get("site");
        $upload = \app\common\model\Config::upload();
        // 上传信息配置后
        Event::trigger("upload_config_init", $upload);
        // 配置信息
        $config = [
            'site'           => array_intersect_key($site, array_flip(['name', 'cdnurl', 'version', 'timezone', 'languages'])),
            'upload'         => $upload,
            'modulename'     => 'addons',
            'controllername' => 'index',
            'actionname'     => $this->request->action(),
            'jsname'         => 'cropper',
            'moduleurl'      => rtrim(url("/index", [], false)->build(), '/'),
            'language'       => $lang
        ];
        $config = array_merge($config, Config::get("view_replace_str"));
        Config::set(array_merge(Config::get('upload'), $upload), 'upload');
        // 配置信息后
        Event::trigger("config_init", $config);

        $this->view->assign('jsconfig', $config);
        $this->view->assign('site', $site);

        parent::_initialize();
    }

    public function index()
    {
        return $this->view->fetch();
    }

    public function cropper()
    {
        return $this->view->fetch();
    }

}