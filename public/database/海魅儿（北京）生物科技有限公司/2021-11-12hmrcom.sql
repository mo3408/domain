-- ----------------------------
-- 备份日期：2021-11-12 21:10:59
-- ----------------------------

-- ----------------------------
-- Table structure for `6_en_admin_user`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_en_admin_user`;
CREATE TABLE `6_en_admin_user` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  `updtime` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_en_bd`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_en_bd`;
CREATE TABLE `6_en_bd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo1` text,
  `seo2` text,
  `seo3` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_en_cate`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_en_cate`;
CREATE TABLE `6_en_cate` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(11) unsigned DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `pid` int(11) DEFAULT NULL,
  `top` tinyint(1) DEFAULT '0',
  `admin` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `jianjie` text,
  `upimg` varchar(200) DEFAULT NULL,
  `instime` varchar(100) DEFAULT NULL,
  `shows` tinyint(1) DEFAULT '0',
  `content` text,
  `ptime` bigint(13) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `upimg2` varchar(200) DEFAULT NULL,
  `upimg3` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=372 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_en_category`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_en_category`;
CREATE TABLE `6_en_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_en_image`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_en_image`;
CREATE TABLE `6_en_image` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `orderid` tinyint(10) DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `upimg` varchar(200) DEFAULT NULL,
  `pid` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `instime` varchar(20) DEFAULT NULL,
  `upimg2` varchar(200) DEFAULT NULL,
  `content` text,
  `shows` tinyint(1) DEFAULT '0',
  `alt` varchar(200) DEFAULT NULL,
  `linktype` varchar(200) DEFAULT NULL,
  `ptime` int(11) DEFAULT '0' COMMENT '排序时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_en_member`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_en_member`;
CREATE TABLE `6_en_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mem` tinyint(1) DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `mphone` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `instime` datetime DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `kecheng` text,
  `yue_time` text,
  `level` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_en_message`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_en_message`;
CREATE TABLE `6_en_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` tinyint(1) DEFAULT '0',
  `nid` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tel` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `content` text,
  `instime` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `ptime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_en_news`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_en_news`;
CREATE TABLE `6_en_news` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `admin` varchar(40) DEFAULT NULL,
  `upimg` varchar(200) DEFAULT NULL,
  `upimg2` varchar(200) DEFAULT NULL,
  `shows` tinyint(1) DEFAULT NULL,
  `title` varchar(225) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `content` longtext,
  `is_` int(5) DEFAULT '0',
  `pid` int(11) DEFAULT NULL,
  `instime` varchar(100) DEFAULT NULL,
  `jianjie` text,
  `link` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `upimg3` varchar(200) DEFAULT NULL,
  `yu` int(100) DEFAULT '0',
  `number` int(100) DEFAULT '0',
  `startTime` datetime DEFAULT NULL,
  `wh6_en_long` varchar(100) DEFAULT NULL,
  `ptime` bigint(13) DEFAULT NULL,
  `top` tinyint(1) DEFAULT '0' COMMENT '新闻置顶用',
  `jianjie2` text,
  `jianjie3` text,
  `jianjie4` text,
  `jianjie5` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=687 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_en_order`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_en_order`;
CREATE TABLE `6_en_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `kid` int(11) DEFAULT NULL COMMENT '预约课程ID',
  `instime` datetime DEFAULT NULL COMMENT '预约时间',
  `mem` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_en_system`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_en_system`;
CREATE TABLE `6_en_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `keywords` text,
  `logo` varchar(200) DEFAULT NULL,
  `isopen` tinyint(1) DEFAULT '1',
  `fax` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `icp` varchar(200) DEFAULT NULL COMMENT '备案号',
  `sqlcopyorder` varchar(11) DEFAULT '0' COMMENT '备份数据库次数',
  `copyright` varchar(200) DEFAULT NULL COMMENT '版权',
  `notice` text,
  `code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Table structure for `6_tp_about`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_about`;
CREATE TABLE `6_tp_about` (
  `aid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_ad`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_ad`;
CREATE TABLE `6_tp_ad` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告ID',
  `ad_name` varchar(60) DEFAULT NULL COMMENT '广告名称 ',
  `on` tinyint(1) DEFAULT '1' COMMENT '广告是否开户，0否 1是',
  `type` tinyint(1) DEFAULT '1' COMMENT '广告类型1图片 2轮播',
  `img_src` varchar(150) DEFAULT NULL COMMENT '图片地址',
  `link` varchar(100) DEFAULT NULL COMMENT '广告连接地址',
  `adpos_id` smallint(5) unsigned DEFAULT NULL COMMENT '所属广告位',
  PRIMARY KEY (`id`),
  KEY `adpos_id` (`adpos_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_adflash`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_adflash`;
CREATE TABLE `6_tp_adflash` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '动画广告ID',
  `fimg_src` varchar(150) DEFAULT NULL COMMENT '动画广告图片路径',
  `flink` varchar(100) DEFAULT NULL COMMENT '动画广告图片连接地址',
  `title` varchar(60) DEFAULT NULL,
  `ad_id` smallint(6) DEFAULT NULL COMMENT '所属广告ID',
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ad_id` (`ad_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_admin`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_admin`;
CREATE TABLE `6_tp_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `uname` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` char(32) DEFAULT NULL COMMENT '密码',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `last_time` int(10) DEFAULT NULL COMMENT '最后登录时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态1正常 2禁用',
  `groupid` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index` (`groupid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_adpos`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_adpos`;
CREATE TABLE `6_tp_adpos` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '广告位ID',
  `name` varchar(60) DEFAULT NULL COMMENT '广告位名称',
  `height` smallint(6) DEFAULT NULL COMMENT '广告位高度',
  `width` smallint(6) DEFAULT NULL COMMENT '广告位宽度',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_archives`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_archives`;
CREATE TABLE `6_tp_archives` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(150) DEFAULT NULL COMMENT '标题',
  `keywords` varchar(150) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `top` tinyint(1) DEFAULT '0',
  `writer` varchar(60) DEFAULT NULL COMMENT '作者',
  `source` varchar(150) DEFAULT NULL COMMENT '来源',
  `link` varchar(500) DEFAULT NULL,
  `a_img` varchar(50) DEFAULT NULL COMMENT '缩略图',
  `home_img` varchar(255) DEFAULT NULL,
  `attr` varchar(30) DEFAULT NULL COMMENT '文档属性',
  `click` mediumint(255) DEFAULT '0' COMMENT '点击量',
  `content` longtext COMMENT '内容',
  `cate_id` mediumint(9) DEFAULT NULL COMMENT '所性栏目',
  `imgs` varchar(5000) DEFAULT NULL,
  `model_id` mediumint(9) DEFAULT NULL COMMENT '所属模型',
  `time` int(10) DEFAULT NULL COMMENT '发布时间',
  `sort` int(6) DEFAULT '0' COMMENT '排序',
  `home` tinyint(1) DEFAULT '0' COMMENT '是否推荐到首页是：1 否：0',
  `show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示是：1 否：0',
  `content2` text,
  `vineyard` text,
  `craft` text,
  `skill` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=480 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_auth_group`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_auth_group`;
CREATE TABLE `6_tp_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_auth_group_access`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_auth_group_access`;
CREATE TABLE `6_tp_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_auth_rule`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_auth_rule`;
CREATE TABLE `6_tp_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则ID',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '规则类型',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用:1:启用 0：不启用',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` mediumint(8) NOT NULL DEFAULT '0' COMMENT '上级规则ID顶级为0',
  `icon` varchar(15) DEFAULT NULL COMMENT '图标名称',
  `show` tinyint(1) DEFAULT '1' COMMENT '是否显示:1：显示  0：不显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_cate`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_cate`;
CREATE TABLE `6_tp_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `cate_name` varchar(300) NOT NULL COMMENT '栏目名称',
  `cate_ename` varchar(300) DEFAULT NULL,
  `language` varchar(2) DEFAULT 'cn' COMMENT '语言版本',
  `title` varchar(500) DEFAULT NULL COMMENT '栏目标题',
  `keywords` varchar(500) DEFAULT NULL COMMENT '关键词',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `content` text COMMENT '内容',
  `jump_id` int(10) DEFAULT '0' COMMENT '跳转到哪个栏目：0为不跳转',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态：1显示0不显示',
  `programa` tinyint(1) DEFAULT '1' COMMENT '是否左侧栏目显示1:显示  0：不显示',
  `cate_file` varchar(150) DEFAULT NULL COMMENT '附件',
  `img` varchar(150) DEFAULT NULL COMMENT '栏目图片',
  `cate_attr` tinyint(1) DEFAULT '1' COMMENT '属性：1列表、2封面3外链栏目',
  `list_tmp` varchar(60) DEFAULT NULL COMMENT '列表模版',
  `article_tmp` varchar(60) DEFAULT NULL COMMENT '频道模版',
  `index_tmp` varchar(60) DEFAULT NULL COMMENT '内容页模版',
  `level` tinyint(1) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '999' COMMENT '排序',
  `link` varchar(150) DEFAULT NULL COMMENT '外链地址',
  `model_id` mediumint(9) DEFAULT NULL COMMENT '新上所属模型',
  `pid` int(10) unsigned DEFAULT '0' COMMENT '上级ID',
  `bottom_nav` tinyint(1) DEFAULT '0' COMMENT '是否底部导航否：0   是：1',
  `icon` varchar(15) DEFAULT 'fa-th-list' COMMENT '栏目图标',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=415 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_cftype`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_cftype`;
CREATE TABLE `6_tp_cftype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字段ID',
  `cf_type` varchar(60) DEFAULT NULL COMMENT '字段类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_class`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_class`;
CREATE TABLE `6_tp_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `content` text,
  `sort` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `img` char(255) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_conf`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_conf`;
CREATE TABLE `6_tp_conf` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '配置项ID',
  `cname` varchar(60) DEFAULT NULL COMMENT '中文名称',
  `ename` varchar(30) DEFAULT NULL COMMENT '英文名称',
  `value` text COMMENT '默认值',
  `values` varchar(255) DEFAULT NULL COMMENT '可选值',
  `dt_type` tinyint(1) DEFAULT '1' COMMENT '1、文本框2、单选3、筛选4、下拉菜单 5、文本域6、附件',
  `cf_type` tinyint(1) DEFAULT '1' COMMENT '1、基本信息2、联系方式3、SEO设置',
  `sort` smallint(6) DEFAULT NULL COMMENT '排序',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否启用1:启用 0：不启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_contact`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_contact`;
CREATE TABLE `6_tp_contact` (
  `aid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_history`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_history`;
CREATE TABLE `6_tp_history` (
  `aid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_links`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_links`;
CREATE TABLE `6_tp_links` (
  `aid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_media`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_media`;
CREATE TABLE `6_tp_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alt` varchar(1000) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `caption` varchar(255) DEFAULT NULL COMMENT '说明 备注',
  `type` varchar(10) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL,
  `last_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_message`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_message`;
CREATE TABLE `6_tp_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` char(255) DEFAULT NULL,
  `tel` char(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_model`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_model`;
CREATE TABLE `6_tp_model` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `model_name` varchar(50) DEFAULT NULL COMMENT '模型名称',
  `table_name` varchar(50) DEFAULT NULL COMMENT '模型对应的表',
  `status` tinyint(1) DEFAULT '1' COMMENT '模型状态：1开户，0禁用',
  `cate_shows` varchar(50) DEFAULT NULL COMMENT '栏目设置:1:seo信息 2：栏目内容3：附栏目名称4：栏目图片5外链6：附件上传',
  `ad_shows` varchar(2000) DEFAULT NULL COMMENT '文章默认信息:1:推荐到首页 2:发布时间 3:关键词 4:描述 5：内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_model_fields`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_model_fields`;
CREATE TABLE `6_tp_model_fields` (
  `id` mediumint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '字段ID',
  `field_cname` varchar(60) DEFAULT NULL COMMENT '字段中文名',
  `field_ename` varchar(60) DEFAULT NULL COMMENT '字段英文名',
  `field_type` tinyint(1) DEFAULT '1' COMMENT '字段类型1、单选 2、单选 3、复选 4、下拉 5、文本域 6、附件 7、浮点弄 8、整型 9、长文本longtest',
  `field_values` varchar(255) DEFAULT NULL COMMENT '可选值',
  `model_id` mediumint(11) NOT NULL COMMENT '所属模型',
  `sort` smallint(6) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `model_id` (`model_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_news`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_news`;
CREATE TABLE `6_tp_news` (
  `aid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_operation_log`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_operation_log`;
CREATE TABLE `6_tp_operation_log` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `user` varchar(60) DEFAULT NULL COMMENT '用户名',
  `group` varchar(60) DEFAULT NULL COMMENT '用户组',
  `action` varchar(255) DEFAULT NULL COMMENT '执行的动作',
  `logip` varchar(15) DEFAULT NULL COMMENT '用户IP',
  `logtime` int(10) DEFAULT NULL COMMENT '执行动作的时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_product`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_product`;
CREATE TABLE `6_tp_product` (
  `aid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_tp_ys`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_tp_ys`;
CREATE TABLE `6_tp_ys` (
  `aid` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_wd_admin_user`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_wd_admin_user`;
CREATE TABLE `6_wd_admin_user` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  `updtime` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_wd_bd`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_wd_bd`;
CREATE TABLE `6_wd_bd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo1` text,
  `seo2` text,
  `seo3` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_wd_cate`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_wd_cate`;
CREATE TABLE `6_wd_cate` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(11) unsigned DEFAULT '0',
  `orderid` int(11) DEFAULT '0',
  `pid` int(11) DEFAULT NULL,
  `top` tinyint(1) DEFAULT '0',
  `admin` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `jianjie` text,
  `upimg` varchar(200) DEFAULT NULL,
  `instime` varchar(100) DEFAULT NULL,
  `shows` tinyint(1) DEFAULT '0',
  `content` text,
  `ptime` bigint(13) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `upimg2` varchar(200) DEFAULT NULL,
  `upimg3` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=372 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_wd_category`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_wd_category`;
CREATE TABLE `6_wd_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_wd_image`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_wd_image`;
CREATE TABLE `6_wd_image` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `orderid` tinyint(10) DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `upimg` varchar(200) DEFAULT NULL,
  `pid` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `instime` varchar(20) DEFAULT NULL,
  `upimg2` varchar(200) DEFAULT NULL,
  `content` text,
  `shows` tinyint(1) DEFAULT '0',
  `alt` varchar(200) DEFAULT NULL,
  `linktype` varchar(200) DEFAULT NULL,
  `ptime` int(11) DEFAULT '0' COMMENT '排序时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_wd_member`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_wd_member`;
CREATE TABLE `6_wd_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mem` tinyint(1) DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `mphone` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `instime` datetime DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `kecheng` text,
  `yue_time` text,
  `level` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_wd_message`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_wd_message`;
CREATE TABLE `6_wd_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` tinyint(1) DEFAULT '0',
  `nid` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tel` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `content` text,
  `instime` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `ptime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_wd_news`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_wd_news`;
CREATE TABLE `6_wd_news` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `admin` varchar(40) DEFAULT NULL,
  `upimg` varchar(200) DEFAULT NULL,
  `upimg2` varchar(200) DEFAULT NULL,
  `shows` tinyint(1) DEFAULT NULL,
  `title` varchar(225) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `content` longtext,
  `is_` int(5) DEFAULT '0',
  `pid` int(11) DEFAULT NULL,
  `instime` varchar(100) DEFAULT NULL,
  `jianjie` text,
  `link` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `upimg3` varchar(200) DEFAULT NULL,
  `yu` int(100) DEFAULT '0',
  `number` int(100) DEFAULT '0',
  `startTime` datetime DEFAULT NULL,
  `wh6_en_long` varchar(100) DEFAULT NULL,
  `ptime` bigint(13) DEFAULT NULL,
  `top` tinyint(1) DEFAULT '0' COMMENT '新闻置顶用',
  `jianjie2` text,
  `jianjie3` text,
  `jianjie4` text,
  `jianjie5` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=699 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_wd_order`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_wd_order`;
CREATE TABLE `6_wd_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `kid` int(11) DEFAULT NULL COMMENT '预约课程ID',
  `instime` datetime DEFAULT NULL COMMENT '预约时间',
  `mem` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `6_wd_system`
-- ----------------------------
-----php+mysql版本：7.3.29+6.0.2-alpha-community-nt-debug;
DROP TABLE IF EXISTS `6_wd_system`;
CREATE TABLE `6_wd_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `keywords` text,
  `logo` varchar(200) DEFAULT NULL,
  `isopen` tinyint(1) DEFAULT '1',
  `fax` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT '0',
  `address` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `icp` varchar(200) DEFAULT NULL COMMENT '备案号',
  `sqlcopyorder` varchar(11) DEFAULT '0' COMMENT '备份数据库次数',
  `copyright` varchar(200) DEFAULT NULL COMMENT '版权',
  `notice` text,
  `code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records for `6_en_admin_user`
-- ----------------------------
INSERT INTO `6_en_admin_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',2016-08-05 14:08:48,2016-08-31 16:02:05,2016-09-18 14:30:34,2016-09-18 15:39:11,2016-10-17 09:54:36,2016-10-17 15:26:34,2016-10-17 15:44:08,2016-10-28 11:36:00,2016-12-26 15:37:14');

-- ----------------------------
-- Records for `6_en_cate`
-- ----------------------------
INSERT INTO `6_en_cate` VALUES ('306', 'WE', '0', '6', '0', '0', '', '1', 'newss', '', '', '', '2016-08-22', '0', '', '', '', '', '');
INSERT INTO `6_en_cate` VALUES ('363', 'Recruit', '0', '98', '309', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1483414009', '', '', '');
INSERT INTO `6_en_cate` VALUES ('308', 'NEWS', '0', '9', '0', '0', '', '1', 'news', '', '', '', '2016-08-22', '0', '', '', '', '', '');
INSERT INTO `6_en_cate` VALUES ('309', 'CONTACT', '0', '11', '0', '0', '', '1', 'newss', '', '', '', '2016-08-22', '0', '', '', '', '', '');
INSERT INTO `6_en_cate` VALUES ('314', 'Industry news', '0', '99', '308', '0', '', '', 'news', '', '', '', '2016-08-22', '1', '', '1483414329', '', '', '');
INSERT INTO `6_en_cate` VALUES ('315', 'HOME', '0', '4', '0', '0', '', '1', 'info', '', '', '', '2016-08-23', '0', '', '', '', '', '');
INSERT INTO `6_en_cate` VALUES ('316', ' Copyright notice', '0', '20', '0', '0', '', '1', 'info', '', '', '', '2016-08-30', '0', '', '', '', '', '');
INSERT INTO `6_en_cate` VALUES ('364', 'Business office', '0', '97', '309', '0', '', '', 'newss', '', '', '', '2016-12-22', '1', '', '1483414028', '', '', '');
INSERT INTO `6_en_cate` VALUES ('354', 'Intelligent lighting', '0', '0', '352', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1483414564', '', '', '');
INSERT INTO `6_en_cate` VALUES ('328', '企业新闻', '0', '99', '327', '0', '', '', 'news', '', '', '', '2016-08-31', '1', '', '1476675263', '', '', '');
INSERT INTO `6_en_cate` VALUES ('329', '行业动态', '0', '80', '327', '0', '', '', 'news', '', '', '', '2016-08-31', '1', '', '1476675805', '', '', '');
INSERT INTO `6_en_cate` VALUES ('335', '会展预告', '0', '70', '327', '0', '', '', 'news', '', '', '', '2016-10-17', '1', '', '1476675811', '', '', '');
INSERT INTO `6_en_cate` VALUES ('368', 'Engineering Department', '0', '0', '364', '0', '', '', 'news', '', '', '', '2016-12-23', '1', '', '1483414135', '', '', '');
INSERT INTO `6_en_cate` VALUES ('369', 'Comprehensive Department', '0', '0', '364', '0', '', '', 'news', '', '', '', '2016-12-23', '1', '', '1483414143', '', '', '');
INSERT INTO `6_en_cate` VALUES ('356', 'Landscape lighting', '0', '0', '352', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1483414594', '', '', '');
INSERT INTO `6_en_cate` VALUES ('355', 'Interior space', '0', '0', '352', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1483414578', '', '', '');
INSERT INTO `6_en_cate` VALUES ('351', 'SERVICE', '0', '8', '0', '0', '', '1', 'newss', '', '', '', '2016-12-21', '0', '', '', '', '', '');
INSERT INTO `6_en_cate` VALUES ('352', 'CASE', '0', '8', '0', '0', '', '1', 'news', '', '', '', '2016-12-21', '0', '', '', '', '', '');
INSERT INTO `6_en_cate` VALUES ('353', '规划设计', '0', '95', '351', '0', 'LIGHTING PLANNING DESIGE', '', 'news', '', '', '../uploads/20161221/20161221185430_840.png', '2016-12-21', '1', '', '1482474366', '', '', '');
INSERT INTO `6_en_cate` VALUES ('357', 'Planning and design', '0', '0', '352', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1483414602', '', '', '');
INSERT INTO `6_en_cate` VALUES ('362', 'Honor', '0', '89', '306', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1483415473', '', '', '');
INSERT INTO `6_en_cate` VALUES ('365', 'Sales Department', '0', '0', '364', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1483414117', '', '', '');
INSERT INTO `6_en_cate` VALUES ('366', 'Design Department', '0', '0', '364', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1483414126', '', '', '');
INSERT INTO `6_en_cate` VALUES ('370', 'Company dynamics', '0', '0', '308', '0', '', '', 'news', '', '', '', '2016-12-27', '1', '', '1483414339', '', '', '');
INSERT INTO `6_en_cate` VALUES ('371', 'Staff style', '0', '0', '308', '0', '', '', 'news', '', '', '', '2016-12-28', '1', '', '1483414348', '', '', '');

-- ----------------------------
-- Records for `6_en_category`
-- ----------------------------
INSERT INTO `6_en_category` VALUES ('2', '新闻类', 'news', '1');
INSERT INTO `6_en_category` VALUES ('4', '单条信息类', 'info', '3');
INSERT INTO `6_en_category` VALUES ('6', '多张图片类', 'image', '5');
INSERT INTO `6_en_category` VALUES ('18', '二型新闻', 'newss', '');

-- ----------------------------
-- Records for `6_en_image`
-- ----------------------------
INSERT INTO `6_en_image` VALUES ('1', '', '99', 'banaer图片1', '../uploads/20161228/20161228150621_193.jpg', '521', '', '2016-12-28', '', '', '1', '', '', '1482908781');
INSERT INTO `6_en_image` VALUES ('9', '', '0', 'banaer图片2', '../uploads/20161227/20161227112545_756.jpg', '521', '', '2016-12-27', '', '', '1', '', '', '1482809145');
INSERT INTO `6_en_image` VALUES ('10', '', '0', 'banaer图片3', '../uploads/20161227/20161227110745_847.jpg', '521', '', '2016-12-27', '', '', '1', '', '', '1482808065');
INSERT INTO `6_en_image` VALUES ('12', '', '0', 'banaer1', '../uploads/20161228/20161228144302_478.jpg', '522', '', '2016-12-28', '', '', '1', '', '', '1482907382');
INSERT INTO `6_en_image` VALUES ('13', '', '0', 'banaer2', '../uploads/20161228/20161228150637_466.jpg', '522', '', '2016-12-28', '', '', '1', '', '', '1482908797');
INSERT INTO `6_en_image` VALUES ('16', '', '0', '', '../uploads/20161228/20161228144628_138.jpg', '522', '', '2016-12-28', '', '', '1', '', '', '1482907588');

-- ----------------------------
-- Records for `6_en_member`
-- ----------------------------
INSERT INTO `6_en_member` VALUES ('16', '0', 'wzjwzj', 'wzjwzj', '', '', '2016-12-27 00:00:00', '0', '', '', '633', '', '0');
INSERT INTO `6_en_member` VALUES ('15', '0', '123456', '123456', '', '', '2016-12-26 00:00:00', '0', '', '', '633', '', '0');
INSERT INTO `6_en_member` VALUES ('17', '0', '111111', '111111', '', '', '2016-12-27 00:00:00', '0', '', '', '633', '', '0');
INSERT INTO `6_en_member` VALUES ('18', '0', '333', '333', '', '', '2017-01-03 00:00:00', '0', '', '', '686', '', '0');

-- ----------------------------
-- Records for `6_en_message`
-- ----------------------------
INSERT INTO `6_en_message` VALUES ('8', '2', '', '联系方式', '13566666666', 'taifute@taifute.com.cn', '', 'rwrwrgregregregw', '2016-07-28 16:30:16', '留言标题', '');
INSERT INTO `6_en_message` VALUES ('9', '2', '', '钒铝合金', '13659988888', '395968009@qq.com', '', 'rewrewrewqr', '2016-07-28 16:31:02', 'title', '');
INSERT INTO `6_en_message` VALUES ('32', '1', '', '姓名', '18045430118', '1111@qq.com', '公司', '留言内容', '2016-10-17 10:06:09', '留言标题', '');
INSERT INTO `6_en_message` VALUES ('33', '1', '', '姓名1', '18045430118', '1111@qq.com', '公司1', '留言内容', '2016-10-18 18:29:03', '留言标题', '');

-- ----------------------------
-- Records for `6_en_news`
-- ----------------------------
INSERT INTO `6_en_news` VALUES ('639', 'HOME', '', '', '', '1', '', '0', '0', '<div class="introduce"><p>Bright photoelectric technology (Beijing) Co., Ltd. was founded in 2004, with the national urban and road lighting professional qualifications. Business scope covers: office, commercial, industrial, roads and bridges, stadiums, landscape and other fields of design, product supply, installation, maintenance and other multi-level and wide-ranging service.</p><p>Bright photoelectric technology (Beijing) Co., Ltd. is a group member unit of China Institute of lighting, for safety production license issued by the Beijing Municipal Construction Committee, the company since its inception, through the unremitting efforts of all staff and the community support, the company has developed to become a large number of high-quality and high-efficiency industry talents, 6 senior titles, intermediate grade 20, bachelor degree or above of 80%, and 2004 respectively by the occupational health and safety management system of ISO9001 quality management system certification, ISO14001 environmental management system certification and GB/T28001 certification.</p><p>The company is headquartered in Beijing, with offices in Tianjin, Chongqing, high Hainan, Chengdu, Shanghai, Xinjiang, Harbin and other places, has formed a sound network system, more convenient and efficient to provide various solutions.</p></div>', '0', '315', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1483428449', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('297', 'Corporate culture', '', '../uploads/20160830/20160830181859_571.jpg', '', '1', '', '95', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482311004132580.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482311005257846.jpg" style="vertical-align: middle; border: none;"/></p><p><br/></p>', '0', '306', '2016-08-30', '', '', '', 'info', '', '', '0', '0', '', '', '1483415444', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('592', 'Organization', '', '', '', '1', '', '90', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482311021148502.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482311022307806.jpg" style="vertical-align: middle; border: none;"/></p><p><br/></p>', '0', '306', '2016-12-21', '', '', '', 'info', '', '', '0', '0', '', '', '1483415462', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('615', '安全生产许可证', '', '../uploads/20161229/20161229105832_202.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1482980390', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('616', '飞利浦合作伙伴1', '', '../uploads/20161229/20161229105853_958.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1482980333', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('617', '飞利浦合作伙伴2', '', '../uploads/20161229/20161229105905_218.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1482980345', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('618', '新、资质证书', '', '../uploads/20161229/20161229105919_815.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1482980359', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('619', '营业执照', '', '../uploads/20161229/20161229105935_851.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1482980375', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('296', 'Company profile', '', '../uploads/20160830/20160830181852_281.jpg', '', '1', '', '99', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482310981939728.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482310981140438.jpg" style="vertical-align: middle; border: none;"/></p><p><br/></p>', '0', '306', '2016-12-21', '', '', '', 'info', '', '', '0', '1', '', '', '1483415430', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('600', '工程施工', 'ENGINEERING SONSTRUCTION', '../uploads/20161221/20161221182814_212.png', '', '1', '', '99', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482315589176774.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '351', '2016-12-21', '', '', '', 'info', '', '', '0', '0', '', '', '1483414702', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('261', '产品介绍', '', '', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">官方天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">公司正式成立于2009年，技术力量雄厚，拥有两位博士及众多从事汽车转向行业的高、中级技术工程师，有能力根据客户车辆需求设计各种类型的电动助力转向器。经过多年发展，天津德科建立起独立的总成车间、无尘无静电恒温恒湿控制器生产车间和拥有全套助力转向器试验的实验室。同时，德科还获得了欧盟的CE认证及ISO/TS16949 质量体系认证德科以“品质为王”的制造精神赢得了国内外客户的青睐和信任成为同行业出口第一的企业。德科愿与您共同发展，为社会创造效益，为员工创造价值。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p><br/></p>', '1', '260', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857118', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('262', '应用领域', '', '', '', '1', '', '0', '0', '<p>应用领域</p>', '1', '260', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857153', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('263', '相关参数', '', '', '', '1', '', '0', '0', '<p>相关参数</p><p><br/></p>', '1', '260', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857180', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('264', '产品介绍', '', '', '', '1', '', '1', '0', '<p><br/></p><p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">官方天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">公司正式成立于2009年，技术力量雄厚，拥有两位博士及众多从事汽车转向行业的高、中级技术工程师，有能力根据客户车辆需求设计各种类型的电动助力转向器。经过多年发展，天津德科建立起独立的总成车间、无尘无静电恒温恒湿控制器生产车间和拥有全套助力转向器试验的实验室。同时，德科还获得了欧盟的CE认证及ISO/TS16949 质量体系认证德科以“品质为王”的制造精神赢得了国内外客户的青睐和信任成为同行业出口第一的企业。德科愿与您共同发展，为社会创造效益，为员工创造价值。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p><br/></p>', '1', '254', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857218', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('265', '应用邻域', '', '', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">官方天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">公司正式成立于2009年，技术力量雄厚，拥有两位博士及众多从事汽车转向行业的高、中级技术工程师，有能力根据客户车辆需求设计各种类型的电动助力转向器。经过多年发展，天津德科建立起独立的总成车间、无尘无静电恒温恒湿控制器生产车间和拥有全套助力转向器试验的实验室。同时，德科还获得了欧盟的CE认证及ISO/TS16949 质量体系认证德科以“品质为王”的制造精神赢得了国内外客户的青睐和信任成为同行业出口第一的企业。德科愿与您共同发展，为社会创造效益，为员工创造价值。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p><br/></p>', '1', '254', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857271', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('266', '相关参数', '', '', '', '1', '', '0', '0', '<p>相关参数</p>', '1', '254', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857288', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('286', 'Copyright notice', '', '../uploads/20161017/20161017160609_512.jpg', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482399289112162.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482399290211673.jpg" style="vertical-align: middle; border: none;"/></p><p><br/></p>', '0', '316', '2016-08-03 ', '', '', '', 'info', '', '', '0', '1', '', '', '1483413549', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('570', 'Channel cooperation', '1.flv', '../uploads/20161028/20161028160823_382.jpg', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161227/1482806450364866.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161227/1482806450994034.jpg" style="vertical-align: middle; border: none;"/></p><p><br/></p>', '0', '316', '2016-10-28', '', '', '', 'info', '', '', '0', '0', '', '', '1483413569', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('628', 'Sales Representative', '', '', '', '1', '', '0', '0', '<p><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作地点： 北京、上海、南京、厦门、长沙、成都、南宁、贵阳、广州、乌鲁木齐&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作经验： 不限：&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">学历要求： 本科以上&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作性质： 全职&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">招聘人数： 不限&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">福利待遇： 薪水面议&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">其他待遇：五险一金.年终奖金&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">职位描述/要求：&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">1. 重点大学轨道交通、环境工程、热能工程、发电工程、水利水电、经济管理、项目管理、 投融资、工程经济、法律等相关专业&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">2. 良好的沟通和组织协调能力，能处理好会议、出差和项目联络等综合性业务;&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">3. 熟练地使用各种办公软件和办公设备，上进心强，善于在公司中学习和思考;　　&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">4. 熟练编排规范咨询项目报告文档，制作咨询成果的PPT演示文稿并能清晰演讲;&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">5. 有志从事咨询行业工作， 身体健康，责任心强，能适应短期经常性外地出差。</span></p>', '0', '363', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1483414089', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('629', 'Sales Representative', '', '', '', '1', '', '0', '0', '<p><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作地点： 北京、上海、南京、厦门、长沙、成都、南宁、贵阳、广州、乌鲁木齐&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作经验： 不限：&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">学历要求： 本科以上&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作性质： 全职&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">招聘人数： 不限&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">福利待遇： 薪水面议&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">其他待遇：五险一金.年终奖金&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">职位描述/要求：&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">1. 重点大学轨道交通、环境工程、热能工程、发电工程、水利水电、经济管理、项目管理、 投融资、工程经济、法律等相关专业&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">2. 良好的沟通和组织协调能力，能处理好会议、出差和项目联络等综合性业务;&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">3. 熟练地使用各种办公软件和办公设备，上进心强，善于在公司中学习和思考;　　&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">4. 熟练编排规范咨询项目报告文档，制作咨询成果的PPT演示文稿并能清晰演讲;&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">5. 有志从事咨询行业工作， 身体健康，责任心强，能适应短期经常性外地出差。</span></p>', '0', '363', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1483414094', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('630', 'Sales Representative', '', '', '', '1', '', '0', '0', '<p><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作地点： 北京、上海、南京、厦门、长沙、成都、南宁、贵阳、广州、乌鲁木齐&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作经验： 不限：&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">学历要求： 本科以上&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作性质： 全职&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">招聘人数： 不限&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">福利待遇： 薪水面议&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">其他待遇：五险一金.年终奖金&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">职位描述/要求：&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">1. 重点大学轨道交通、环境工程、热能工程、发电工程、水利水电、经济管理、项目管理、 投融资、工程经济、法律等相关专业&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">2. 良好的沟通和组织协调能力，能处理好会议、出差和项目联络等综合性业务;&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">3. 熟练地使用各种办公软件和办公设备，上进心强，善于在公司中学习和思考;　　&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">4. 熟练编排规范咨询项目报告文档，制作咨询成果的PPT演示文稿并能清晰演讲;&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">5. 有志从事咨询行业工作， 身体健康，责任心强，能适应短期经常性外地出差。</span></p>', '0', '363', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1483414099', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('631', 'Sales Representative', '', '', '', '1', '', '0', '0', '<p><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作地点： 北京、上海、南京、厦门、长沙、成都、南宁、贵阳、广州、乌鲁木齐&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作经验： 不限：&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">学历要求： 本科以上&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">工作性质： 全职&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">招聘人数： 不限&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">福利待遇： 薪水面议&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">其他待遇：五险一金.年终奖金&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">职位描述/要求：&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">1. 重点大学轨道交通、环境工程、热能工程、发电工程、水利水电、经济管理、项目管理、 投融资、工程经济、法律等相关专业&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">2. 良好的沟通和组织协调能力，能处理好会议、出差和项目联络等综合性业务;&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">3. 熟练地使用各种办公软件和办公设备，上进心强，善于在公司中学习和思考;　　&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">4. 熟练编排规范咨询项目报告文档，制作咨询成果的PPT演示文稿并能清晰演讲;&nbsp;</span><br style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px; white-space: normal;"/><span style="color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 30px;">5. 有志从事咨询行业工作， 身体健康，责任心强，能适应短期经常性外地出差。</span></p>', '0', '363', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1483414103', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('656', 'Intelligent lighting cases', '', '../uploads/20161224/20161224102905_484.jpg', '', '1', '', '0', '1', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161224/1482546540624477.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '355', '2016-12-24', '', '', '', 'info', '', '', '0', '7', '', '', '1483424103', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('657', 'Intelligent lighting cases', '', '../uploads/20161224/20161224102922_211.jpg', '', '1', '', '0', '1', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161224/1482546557111151.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '355', '2016-12-24', '', '', '', 'info', '', '', '0', '1', '', '', '1483424108', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('658', '智慧照明案例', '', '../uploads/20161224/20161224102939_530.jpg', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161224/1482546569508205.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '356', '2016-12-24', '', '', '', 'info', '', '', '0', '0', '', '', '1482546579', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('659', '智慧照明案例', '', '../uploads/20161224/20161224102956_208.jpg', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161224/1482546593427951.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '357', '2016-12-24', '', '', '', 'info', '', '', '0', '4', '', '', '1482546596', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('684', 'AA安全生产许可证', '', '../uploads/20161229/20161229111503_844.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-29', '', '', '', 'info', '', '', '0', '0', '', '', '1482981303', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('683', '组织机构代码证', '', '../uploads/20161229/20161229105944_347.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-29', '', '', '', 'info', '', '', '0', '0', '', '', '1482980384', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('663', 'Intelligent lighting cases3', '', '../uploads/20161224/20161224103124_161.jpg', '', '1', '', '0', '1', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161224/1482546681119585.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '354', '2016-12-24', '', '', '', 'info', '', '', '0', '4', '', '', '1483424068', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('611', 'Intelligent lighting cases', '', '../uploads/20161222/20161222102719_239.jpg', '', '1', '', '0', '1', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482373634148072.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '354', '2016-12-22', '', '', '', 'info', '', '', '0', '2', '', '', '1483424073', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('612', 'Intelligent lighting cases1', '', '../uploads/20161222/20161222102741_526.jpg', '', '1', '', '0', '1', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482373650428166.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '354', '2016-12-22', '', '', '', 'info', '', '', '0', '5', '', '', '1483424079', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('613', 'Intelligent lighting cases2', '', '../uploads/20161222/20161222102803_500.jpg', '', '1', '', '0', '1', '<p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482373650428166.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="white-space: normal;"><br/></p><p><br/></p>', '0', '354', '2016-12-22', '', '', '', 'info', '', '', '0', '2', '', '', '1483424085', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('667', 'AA安全生产许可证', '', '../uploads/20161229/20161229105737_566.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-24', '', '', '', 'info', '', '', '0', '0', '', '', '1482980257', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('668', 'ISO质量认证', '', '../uploads/20161229/20161229105747_401.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-24', '', '', '', 'info', '', '', '0', '0', '', '', '1482980397', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('669', 'ISO质量认证1', '', '../uploads/20161229/20161229105802_543.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-24', '', '', '', 'info', '', '', '0', '0', '', '', '1482980403', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('670', 'ISO质量认证正本1', '', '../uploads/20161229/20161229105816_384.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-24', '', '', '', 'info', '', '', '0', '0', '', '', '1482980296', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('644', '第一期资料', '', '../uploads/20161223/20161223155638_303.png', '../uploads/20161223/20161223155638_284.jpg', '1', '', '0', '0', '', '0', '368', '2016-12-23', '', '', '', 'info', '', '', '0', '0', '', '', '1482479798', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('645', '第一期资料', '', '../uploads/20161223/20161223155657_498.png', '../uploads/20161223/20161223155657_503.jpg', '1', '', '0', '0', '', '0', '369', '2016-12-23', '', '', '', 'info', '', '', '0', '0', '', '', '1482479817', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('620', 'Reddy thank you, to celebrate the twelve anniversary of Huasheng reddy!', 'LIGHTING', '../uploads/20161222/20161222110529_358.jpg', '', '1', '', '0', '1', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Due to the slowdown in the growth of the global LED lighting market, LED manufacturers have invested in emerging markets to find a new blue ocean. The latest research report shows that in 2015 the size of the Vietnamese LED lighting market reached $271 million, is expected to grow to $348 million in 2016, the growth rate of 28%, so that the Vietnamese market is gradually favored by the LED lighting industry.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375814102510.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Observe the whole Vietnam LED lighting market, the past year consumes about 200 million Vietnamese traditional lighting, which is the power consumption of traditional incandescent light bulbs. With the improvement of LED penetration, the traditional lighting market in Vietnam continued to decline in the past few years, while the LED lighting market has maintained a rising trend, estimated in 2016 the Vietnamese LED lighting penetration will reach about 35%.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375818498308.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Insiders said that due to the LED lighting market in Vietnam base is relatively low, so the size of the market growth rate than other countries in Southeast Asia soon. In recent years, with the improvement of the consumption power of Vietnam, the LED lighting market demand will also be the main engineering applications, and gradually into the home lighting applications.</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal;">With Vietnam&#39;s per capita income grew, the LED home lighting market also began to flourish, so the LED manufacturers, brand management and channel establishment in the local market will become a key.</p><p><br/></p>', '0', '314', '2016-12-22', '', '', '', 'info', '', '', '0', '12', '', '', '1483415946', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('622', 'Market potential of the Vietnamese market by the LED lighting industry favored', 'LIGHTING', '../uploads/20161224/20161224104740_719.jpg', '', '1', '', '0', '1', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Due to the slowdown in the growth of the global LED lighting market, LED manufacturers have invested in emerging markets to find a new blue ocean. The latest research report shows that in 2015 the size of the Vietnamese LED lighting market reached $271 million, is expected to grow to $348 million in 2016, the growth rate of 28%, so that the Vietnamese market is gradually favored by the LED lighting industry.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375814102510.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Observe the whole Vietnam LED lighting market, the past year consumes about 200 million Vietnamese traditional lighting, which is the power consumption of traditional incandescent light bulbs. With the improvement of LED penetration, the traditional lighting market in Vietnam continued to decline in the past few years, while the LED lighting market has maintained a rising trend, estimated in 2016 the Vietnamese LED lighting penetration will reach about 35%.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375818498308.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Insiders said that due to the LED lighting market in Vietnam base is relatively low, so the size of the market growth rate than other countries in Southeast Asia soon. In recent years, with the improvement of the consumption power of Vietnam, the LED lighting market demand will also be the main engineering applications, and gradually into the home lighting applications.</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal;">With Vietnam&#39;s per capita income grew, the LED home lighting market also began to flourish, so the LED manufacturers, brand management and channel establishment in the local market will become a key.</p><p><br/></p>', '0', '314', '2016-12-22', '', '', '', 'info', '', '', '0', '4', '', '', '1483415991', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('623', 'Night lighting and landscape lighting', 'LIGHTING', '../uploads/20161224/20161224104748_757.jpg', '', '1', '', '0', '1', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Due to the slowdown in the growth of the global LED lighting market, LED manufacturers have invested in emerging markets to find a new blue ocean. The latest research report shows that in 2015 the size of the Vietnamese LED lighting market reached $271 million, is expected to grow to $348 million in 2016, the growth rate of 28%, so that the Vietnamese market is gradually favored by the LED lighting industry.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375814102510.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Observe the whole Vietnam LED lighting market, the past year consumes about 200 million Vietnamese traditional lighting, which is the power consumption of traditional incandescent light bulbs. With the improvement of LED penetration, the traditional lighting market in Vietnam continued to decline in the past few years, while the LED lighting market has maintained a rising trend, estimated in 2016 the Vietnamese LED lighting penetration will reach about 35%.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375818498308.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Insiders said that due to the LED lighting market in Vietnam base is relatively low, so the size of the market growth rate than other countries in Southeast Asia soon. In recent years, with the improvement of the consumption power of Vietnam, the LED lighting market demand will also be the main engineering applications, and gradually into the home lighting applications.</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal;">With Vietnam&#39;s per capita income grew, the LED home lighting market also began to flourish, so the LED manufacturers, brand management and channel establishment in the local market will become a key.</p><p><br/></p>', '0', '314', '2016-12-22', '', '', '', 'info', '', '', '0', '2', '', '', '1483416017', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('626', 'Contact us', '', '', '', '1', '', '99', '0', '<div class="mode clearfix"><ul class="mode_left list-paddingleft-2"><li><p><span class="popq"></span><em>LIANGTONG</em></p></li><li><p><span class="pop"></span><em>WEBSITE&nbsp;：www.rdhs.cn </em></p></li><li><p><span class="email"></span><em>EMAIL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：zhbg@rds.cn &nbsp; &nbsp;</em></p></li><li><p><span class="dh"></span><em>PHONE&nbsp;&nbsp;&nbsp;&nbsp;：010-63385336 &nbsp;010-51660582</em></p></li><li><p><span class="dz"></span><em>ADDRESS：Fengtai District Caihuying West Garden Room 2705 No. 58 fortune &nbsp; </em></p></li></ul><div class="mode_right"><iframe class="ueditor_baidumap" src="http://wangzj.insaas.com/rdhs/ueditor/utf8-php/dialogs/map/show.html#center=116.354551,39.877653&zoom=18&width=530&height=340&markers=116.354551,39.877653&markerStyles=l,A" frameborder="0" width="539" height="348"></iframe></div></div>', '0', '309', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1483494703', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('633', '第一期资料', '', '../uploads/20161222/20161222145446_680.png', '../uploads/20161222/20161222145446_116.jpg', '1', '', '0', '0', '', '0', '365', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1482389686', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('634', '第二期资料', '', '../uploads/20161222/20161222145513_680.png', '../uploads/20161222/20161222145513_547.png', '1', '', '0', '0', '', '0', '365', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1482389725', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('635', '第三期资料', '', '../uploads/20161222/20161222145539_265.png', '../uploads/20161222/20161222145539_938.jpg', '1', '', '0', '0', '', '0', '365', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1482389739', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('636', '第一期资料', '', '../uploads/20161222/20161222145605_966.png', '../uploads/20161222/20161222145605_747.png', '1', '', '0', '0', '', '0', '366', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1482389784', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('637', '第二期资料', '', '../uploads/20161222/20161222145616_165.png', '../uploads/20161222/20161222145616_208.jpg', '1', '', '0', '0', '', '0', '366', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1482389776', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('627', 'Cooperation', '', '', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '309', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1483414049', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('681', 'Market potential of the Vietnamese market by the LED ', 'LIGHTING', '../uploads/20161228/20161228150257_870.jpg', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Due to the slowdown in the growth of the global LED lighting market, LED manufacturers have invested in emerging markets to find a new blue ocean. The latest research report shows that in 2015 the size of the Vietnamese LED lighting market reached $271 million, is expected to grow to $348 million in 2016, the growth rate of 28%, so that the Vietnamese market is gradually favored by the LED lighting industry.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375814102510.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Observe the whole Vietnam LED lighting market, the past year consumes about 200 million Vietnamese traditional lighting, which is the power consumption of traditional incandescent light bulbs. With the improvement of LED penetration, the traditional lighting market in Vietnam continued to decline in the past few years, while the LED lighting market has maintained a rising trend, estimated in 2016 the Vietnamese LED lighting penetration will reach about 35%.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375818498308.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Insiders said that due to the LED lighting market in Vietnam base is relatively low, so the size of the market growth rate than other countries in Southeast Asia soon. In recent years, with the improvement of the consumption power of Vietnam, the LED lighting market demand will also be the main engineering applications, and gradually into the home lighting applications.</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal;">With Vietnam&#39;s per capita income grew, the LED home lighting market also began to flourish, so the LED manufacturers, brand management and channel establishment in the local market will become a key.</p><p><br/></p>', '0', '371', '2016-12-28', '', '', '', 'info', '', '', '0', '0', '', '', '1483423734', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('682', 'Market potential of the Vietnamese market by the LE', 'LIGHTING', '../uploads/20161228/20161228150325_994.jpg', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Due to the slowdown in the growth of the global LED lighting market, LED manufacturers have invested in emerging markets to find a new blue ocean. The latest research report shows that in 2015 the size of the Vietnamese LED lighting market reached $271 million, is expected to grow to $348 million in 2016, the growth rate of 28%, so that the Vietnamese market is gradually favored by the LED lighting industry.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375814102510.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Observe the whole Vietnam LED lighting market, the past year consumes about 200 million Vietnamese traditional lighting, which is the power consumption of traditional incandescent light bulbs. With the improvement of LED penetration, the traditional lighting market in Vietnam continued to decline in the past few years, while the LED lighting market has maintained a rising trend, estimated in 2016 the Vietnamese LED lighting penetration will reach about 35%.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375818498308.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Insiders said that due to the LED lighting market in Vietnam base is relatively low, so the size of the market growth rate than other countries in Southeast Asia soon. In recent years, with the improvement of the consumption power of Vietnam, the LED lighting market demand will also be the main engineering applications, and gradually into the home lighting applications.</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal;">With Vietnam&#39;s per capita income grew, the LED home lighting market also began to flourish, so the LED manufacturers, brand management and channel establishment in the local market will become a key.</p><p><br/></p>', '0', '371', '2016-12-28', '', '', '', 'info', '', '', '0', '0', '', '', '1483423750', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('666', '3A证书', '', '../uploads/20161229/20161229105719_459.jpg', '', '1', '', '0', '0', '', '0', '362', '2016-12-24', '', '', '', 'info', '', '', '0', '0', '', '', '1482980239', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('601', '设备供应', 'EQUIPMENT SUPPLY', '../uploads/20161221/20161221182832_719.png', '', '1', '', '98', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482315600109515.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '351', '2016-12-21', '', '', '', 'info', '', '', '0', '0', '', '', '1482474180', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('609', 'Planning and design2', '', '', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482317465118423.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '353', '2016-12-21', '', '', '', 'info', '', '', '0', '0', '', '', '1483423844', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('603', '智能控制', 'INTELLIGENT CONTROL', '../uploads/20161221/20161221182900_581.png', '', '1', '', '90', '0', '<p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482315600109515.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="white-space: normal;"><br/></p><p style="white-space: normal;"><br/></p><p><br/></p>', '0', '351', '2016-12-21', '', '', '', 'info', '', '', '0', '0', '', '', '1482474374', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('604', '能源管理', 'ENERGY MANAGEMENT', '../uploads/20161221/20161221182914_518.png', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482315600109515.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="white-space: normal;"><br/></p><p style="white-space: normal;"><br/></p><p><br/></p>', '0', '351', '2016-12-21', '', '', '', 'info', '', '', '0', '0', '', '', '1482316154', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('605', '维护保养', 'ENGINEERING CONSULTANT', '../uploads/20161221/20161221182927_491.png', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482315658363188.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '351', '2016-12-21', '', '', '', 'info', '', '', '0', '0', '', '', '1482316167', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('608', 'Planning and design', '', '', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161221/1482317434119563.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">瑞迪华盛科技发展有限公司现为中国照明学会的团体会员单位，获得北京市建设委员会颁发的安全生产许可证，公司自成立以来，经全体员工不懈的努力以及社会各界的大力支持，公司以已发展成为拥有一大批高素质、高效率的行业尖端人才，高级职称6人，中级职称20人、本科及以上学历达80%，并与2004年分别通过了ISO9001质量管理体系认证、ISO14001环境管理体系认证和GB/T28001的职业健康安全管理体系认证。</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司依靠过硬的产品质量、完善的售后服务及强大的可持续发展能力等诸多在市场竞争中屡屡获得先机，赢得了国内外诸多大型项目的订单，并获得了客户的一致好评。业务范围涉及北京、天津、重庆等全国各地及尼日利亚、也门、沙特、先锋赞比亚等海外地区的照明项目。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">公司总部位于北京，在天津、重庆、海南、成都、上海、新疆、哈尔滨等地高有办事机构，目前已形成了完善的服务网络体系，能够更加便捷、高效的提供各项解决方案。 北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装、维护保养等多层次、宽领域服务。</p><p><br/></p>', '0', '353', '2016-12-21', '', '', '', 'info', '', '', '0', '0', '', '', '1483423837', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('685', 'Market potential of the Vietnamese market by the LED lighting industry favored', 'LIGHTING', '../uploads/20170103/20170103140804_376.jpg', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Due to the slowdown in the growth of the global LED lighting market, LED manufacturers have invested in emerging markets to find a new blue ocean. The latest research report shows that in 2015 the size of the Vietnamese LED lighting market reached $271 million, is expected to grow to $348 million in 2016, the growth rate of 28%, so that the Vietnamese market is gradually favored by the LED lighting industry.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375814102510.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Observe the whole Vietnam LED lighting market, the past year consumes about 200 million Vietnamese traditional lighting, which is the power consumption of traditional incandescent light bulbs. With the improvement of LED penetration, the traditional lighting market in Vietnam continued to decline in the past few years, while the LED lighting market has maintained a rising trend, estimated in 2016 the Vietnamese LED lighting penetration will reach about 35%.</p><p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;"><img src="/rdhs/ueditor/php/upload/image/20161222/1482375818498308.jpg" style="vertical-align: middle; border: none;"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal; text-indent: 2em;">Insiders said that due to the LED lighting market in Vietnam base is relatively low, so the size of the market growth rate than other countries in Southeast Asia soon. In recent years, with the improvement of the consumption power of Vietnam, the LED lighting market demand will also be the main engineering applications, and gradually into the home lighting applications.</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &#39;Microsoft Yahei&#39;; font-size: 14px; line-height: 24px; white-space: normal;">With Vietnam&#39;s per capita income grew, the LED home lighting market also began to flourish, so the LED manufacturers, brand management and channel establishment in the local market will become a key.</p><p><br/></p>', '0', '370', '2017-01-03', '', '', '', 'info', '', '', '0', '0', '', '', '1483423704', '0', '', '', '', '');
INSERT INTO `6_en_news` VALUES ('686', 'chinese', '', '../uploads/20170103/20170103151944_963.jpg', '../uploads/20170103/20170103151944_466.jpg', '1', '', '0', '0', '', '0', '369', '2017-01-03', '', '', '', 'info', '', '', '0', '0', '', '', '1483427984', '0', '', '', '', '');

-- ----------------------------
-- Records for `6_en_system`
-- ----------------------------
INSERT INTO `6_en_system` VALUES ('1', 'LIANGTONG', '北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。照明业务范围涵盖：办公、商业、道路桥梁、工业、体育场馆、园林景观等各个领域的方案设计、产品供应、施工安装维护保养等多层次、宽领域服务。', '北京瑞迪华盛科技发展有限公司成立于2004年，拥有国家城市及道路照明专业资质。', '../uploads/20170104/20170104093732_983.png', '1', 'adadf@163.com', '010-63385336 010-51660582', 'Fengtai District Caihuying No. 58 West Wealth Gardens', 'www.rdhs.cn', 'adadf@163.com', 'zhbg@rds.cn', 'ICP78945612', '2', 'Copyright © 2016   LIANGTONG', '网站维护中临时关闭...', '../uploads/20161222/20161222173009_372.jpg');

-- ----------------------------
-- Records for `6_tp_ad`
-- ----------------------------
INSERT INTO `6_tp_ad` VALUES ('39', '首页banner(尺寸：1920*940px)', '1', '2', '', '', '6');
INSERT INTO `6_tp_ad` VALUES ('47', '首页移动广告小幅', '1', '1', '20191031\6718c05207be3ad4bfc50524007a3392.png', '', '14');

-- ----------------------------
-- Records for `6_tp_adflash`
-- ----------------------------
INSERT INTO `6_tp_adflash` VALUES ('116', '20211109\d1be2e0b9d84a6ad11b6a3941f3d2c79.jpg', '', '', '39', '10');

-- ----------------------------
-- Records for `6_tp_admin`
-- ----------------------------
INSERT INTO `6_tp_admin` VALUES ('1', 'kbmanager', 'e10adc3949ba59abbe56e057f20f883e', '1508924008', '1636615657', '1', '1');
INSERT INTO `6_tp_admin` VALUES ('4', 'admin', 'e597a1394495607f7962710e9c4cfa46', '1508987069', '1636702114', '1', '2');

-- ----------------------------
-- Records for `6_tp_adpos`
-- ----------------------------
INSERT INTO `6_tp_adpos` VALUES ('6', '首页banner', '610', '1400');

-- ----------------------------
-- Records for `6_tp_archives`
-- ----------------------------
INSERT INTO `6_tp_archives` VALUES ('430', '水果市场最近动态', '', '', '1', '', '', '', '20201111/5686e16d467c73f152a899cc3c4a6d00.jpg', '20201111/5686e16d467c73f152a899cc3c4a6d00.jpg', '', '15', '<p><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);">水果为人们喜欢食用的食品，它具有增强食欲、促进消化、</span><a class="blue" href="http://zzk.39.net/zz/penqiang/a7eca.html" target="_blank" style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);">利尿</a><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);">等作用。水果中含</span><a class="blue" href="http://jck.39.net/jiancha/huaxue/shjc/9c455.html" target="_blank" style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);">维生素C</a><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);">较多，鲜枣中含</span><a class="blue" href="http://ypk.39.net/yaopin/wss/7abfc.html" target="_blank" style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);">维生素C</a><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);">最多，其次为山楂、</span><a class="blue" href="http://hzpk.39.net/hz/xs/jingyou/66381.html" target="_blank" style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);">柠檬</a><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);">，蜜柑、广柑、橘子、柚子、鲜龙眼中含</span><a class="blue" href="http://ypk.39.net/yaopin/wss/7bc9c.html" target="_blank" style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);">维生素C</a><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);">也很丰富。此外还含适量</span><a class="blue" href="http://jck.39.net/jiancha/huaxue/xue/9c456.html" target="_blank" style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);">维生素D</a><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);">、胡萝卜素等。红、黄色水果中含胡萝卜素较多，如杏、柿等。水果中含糖量一般在5～23％，仁果类以</span><a class="blue" href="http://ypk.39.net/yaopin/yyy/799f5.html" target="_blank" style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);">果糖</a><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);">为主；核果类以蔗糖为主；浆果类则主要为葡萄糖及果糖。尤其是甜水果中含糖量较高，有利于肝病病人食用。水果中含有一定量的有机酸，如苹果酸、枸橼酸等，能刺激胃液，促进消化。酸味水果中含有机酸较高，如梅子、杏、蔓橘等，能引起胆道痉挛，所以患有肝胆疾患者，限用酸味水果。有些水果如紫葡萄、沙果、杏等含有铁、铜较多，可促进</span><a class="blue" href="http://jbk.39.net/keshi/neike/xueye/48ffb.html" target="_blank" style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);">贫血</a><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);">病人的</span><a class="blue" href="http://jck.39.net/jiancha/huaxue/xue/9c466.html" target="_blank" style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);">血红蛋白</a><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);">的再生。有的水果如苹果，含钾多，有利尿作用，对妊娠</span><a class="blue" href="http://zzk.39.net/zz/quanshen/4ffbf.html" target="_blank" style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);">水肿</a><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);">有较好作用。水果中还有纤维素，可促进肠蠕动，利于消化。然而水果中含有蛋白质及脂肪比其他食品相对少。</span></p>', '384', '', '76', '1605024000', '999', '1', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('431', '桃。为蔷薇科植物桃或山桃的成熟果实。', '', '', '0', '', '', '', '20201111/0b5b47b1fb9e11bcbd74a7452299e120.jpg', '20201111/0b5b47b1fb9e11bcbd74a7452299e120.jpg', '', '6', '<p style="margin-top: 20px; margin-bottom: 0px; padding: 0px 10px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 26px; font-family: 宋体; text-indent: 28px; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);">柿子。性味甘涩、寒，入心、肺、大肠经。具有清热、润肺、止渴的作用。治热咳嗽、吐血、口疮。柿子含有糖、鞣质，新鲜柿子含碘121微克/千克。柿子各部分功能也各不相同，如：柿叶，具止血作用，能显著增强毛细血管弹性，可治胃、<a class="blue" href="http://jbk.39.net/keshi/neike/xiaohua/9d3db.html" target="_blank" style="color: rgb(51, 51, 51);">十二指肠溃疡</a>、<a class="blue" href="http://jbk.39.net/keshi/crk/4fa92.html" target="_blank" style="color: rgb(51, 51, 51);">肺结核</a>、<a class="blue" href="http://zzk.39.net/zz/pifu/a67fb.html" target="_blank" style="color: rgb(51, 51, 51);">紫癜</a>等出血，其具体方法是3～10克蒸汤内服每日两次。柿蒂具有降气止呃作用，方法；柿蒂30克，丁香15克，生<a class="blue" href="http://hzpk.39.net/hz/xs/jingyou/66389.html" target="_blank" style="color: rgb(51, 51, 51);">姜</a>10克煎汤服。柿漆：未成熟柿果经加工制成胶状液，主治<a class="blue" href="http://jbk.39.net/keshi/neike/xxgnk/49037.html" target="_blank" style="color: rgb(51, 51, 51);">高血压</a>，由于味道涩，常同牛奶、米汤和服，每次1～2匙，每日2～3次。柿饼：烧灰，香油调，外敷，治水火<a class="blue" href="http://zzk.39.net/zz/quanshen/a97ab.html" target="_blank" style="color: rgb(51, 51, 51);">烫伤</a>。柿霜：主治咽喉肿痛，<a class="blue" href="http://zzk.39.net/zz/toubu/kou/a9ece.html" target="_blank" style="color: rgb(51, 51, 51);">口舌生疮</a>。柿叶：长期服用，保持皮肤健康湿润。</p><p style="margin-top: 20px; margin-bottom: 0px; padding: 0px 10px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 26px; font-family: 宋体; text-indent: 28px; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);">桃。为蔷薇科植物桃或山桃的成熟果实。其性味甘酸，温，入肠、胃经。具有生津、润肠、活血、消积的作用。桃里还含有多种对人体有益的维生素，如：蛋白质、脂肪、糖、钙、磷、铁、维生素B和维生素C。糖中有易于被人体吸收的葡萄糖和果糖。除此之外，桃中还含有桃胶，可用于治血淋、<a class="blue" href="http://zzk.39.net/zz/fubu/a63c8.html" target="_blank" style="color: rgb(51, 51, 51);">痢疾</a>，其成分是半乳糖和2—葡萄糖醛酸基。</p><p><br/></p>', '384', '', '76', '1605024000', '999', '1', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('432', '苹果。为蔷薇科植物苹果的果实，其性味甘、凉，入脾、胃经，具有生津、润肺、解暑、开胃、醒酒的功效', '', '', '1', '', '', '', '20201111/e7b0b5e8ede4a9a3aa605817fb4abe40.jpg', '20201111/e7b0b5e8ede4a9a3aa605817fb4abe40.jpg', '', '10', '<h2 style="margin: 30px 0px 0px; padding: 0px; font-size: 16px; color: rgb(49, 131, 177); text-indent: 10px; font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);">鲜果</h2><div class="detail" style="font-family: 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);"><p style="margin-top: 20px; margin-bottom: 0px; padding: 0px 10px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 26px; text-indent: 28px;">苹果。为蔷薇科植物苹果的果实，其性味甘、凉，入脾、胃经，具有生津、润肺、解暑、开胃、醒酒的功效。内含<a class="blue" href="http://ypk.39.net/yaopin/wss/7bc9e.html" target="_blank" style="color: rgb(51, 51, 51);">维生素C</a>和维生素B，含有易消化吸收，不必经过分解可直接被人体吸收的葡萄糖、果糖。没有成熟的水果里含淀粉多，较难消化，成熟过程中淀粉变成糖。苹果里还含有鞣质，所以削好的苹果放置时间久了就变红，德国也有用苹果治疗肠炎，称“摩罗化苹果疗法”。苹果制成苹果粉，是止泻剂。苹果里<a class="blue" href="http://hzpk.39.net/hz/hufu/ms/5d6dd.html" target="_blank" style="color: rgb(51, 51, 51);">矿物质</a>如钾、钙含量较多，严重水肿患者服排钾利尿药时多吃些苹果有利补钾，并可减少副作用。<a class="blue" href="http://zzk.39.net/zz/shengzhi/nxpg/a7779.html" target="_blank" style="color: rgb(51, 51, 51);">妊娠反应</a>期多吃苹果可补充维生素等营养，调解水盐及电解质平衡，防止因频繁<a class="blue" href="http://zzk.39.net/zz/fubu/89157.html" target="_blank" style="color: rgb(51, 51, 51);">呕吐</a>导致的中毒症。饭后吃苹果，可助消化，是由于内含苹果酸、酒石酸。</p><p style="margin-top: 20px; margin-bottom: 0px; padding: 0px 10px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 26px; text-indent: 28px;">梨。性味甘微寒，入心、肺、胃经，其功能为：生津止渴、清心润肺，除烦利尿，清热解毒，清喉消痰，降炎止咳。主要治疗：心经客热，肺热<a class="blue" href="http://zzk.39.net/zz/toubu/kou/504fc.html" target="_blank" style="color: rgb(51, 51, 51);">咳嗽</a>，痰多<a class="blue" href="http://zzk.39.net/zz/quanshen/a978f.html" target="_blank" style="color: rgb(51, 51, 51);">烦热</a>，津干口渴，声嘶<a class="blue" href="http://zzk.39.net/zz/toubu/kou/a9264.html" target="_blank" style="color: rgb(51, 51, 51);">失音</a>，眼<a class="blue" href="http://zzk.39.net/zz/toubu/yan/a67ad.html" target="_blank" style="color: rgb(51, 51, 51);">目赤</a>痛，风热灼盛，温病热盛，大小便不畅，疮毒，酒毒。但<a class="blue" href="http://zzk.39.net/zz/fubu/aa3bb.html" target="_blank" style="color: rgb(51, 51, 51);">脾胃虚寒</a>、便溏及产妇<a class="blue" href="http://zzk.39.net/zz/quanshen/aa3ca.html" target="_blank" style="color: rgb(51, 51, 51);">血虚</a>者慎食。梨内含有机酸（为苹果酸、柠檬酸），糖类（葡萄糠、蔗糖等），以及维生素B和C。</p><p style="margin-top: 20px; margin-bottom: 0px; padding: 0px 10px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 26px; text-indent: 28px;">香蕉。古时称甘蕉，为芭蕉科植物甘蕉的果实，性味甘、寒，入肺、大肠经。有清热、润肠、解毒的功效。治热病烦渴，<a class="blue" href="http://jbk.39.net/keshi/neike/xiaohua/48fd7.html" target="_blank" style="color: rgb(51, 51, 51);">便秘</a>，<a class="blue" href="http://jbk.39.net/keshi/waike/gc/9d195.html" target="_blank" style="color: rgb(51, 51, 51);">痔</a>血。香蕉皮甲醇提取物有抗真菌作用，可能是蕉皮素的作用。果实含淀粉0.5％，蛋白质1.3％，脂肪0.6％，糖类20％，并含维生素B、C、E，有5一羟色胺、去甲肾上腺素，有纤维素11.55％。香蕉所含糖中果糖和葡萄糖之比为1∶1，对治疗<a class="blue" href="http://zzk.39.net/zz/fubu/a889c.html" target="_blank" style="color: rgb(51, 51, 51);">脂肪痢</a>是合适的，也适用中毒性<a class="blue" href="http://zzk.39.net/zz/fubu/a72c4.html" target="_blank" style="color: rgb(51, 51, 51);">消化不良</a>。临床发现，<a class="blue" href="http://jbk.39.net/keshi/neike/neifenmi/49088.html" target="_blank" style="color: rgb(51, 51, 51);">糖尿病</a>人吃入香蕉中糖类，可使<a class="blue" href="http://jck.39.net/jiancha/huaxue/niao/9c5e5.html" target="_blank" style="color: rgb(51, 51, 51);">尿糖</a>相对降低，又因含矿物质较多，对水盐代谢恢复也有利。</p><p style="margin-top: 20px; margin-bottom: 0px; padding: 0px 10px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 26px; text-indent: 28px;">柑。为芸香料植物茶枝相、瓯相导多种柑类的成熟果实。性味甘酸、凉，有生津止渴、醒酒利尿的功能。其组成成分含橙皮甙、川陈皮素、挥发油，柑橘类水果中柑最适用于热病后体津液不足、口渴等症。柑中还含维生素C，此外，还有<a class="blue" href="http://jck.39.net/jiancha/huaxue/shjc/9c44f.html" target="_blank" style="color: rgb(51, 51, 51);">维生素B1</a>、B2、D、酮酸、葡萄糖、有机酸等。</p></div><p><br/></p>', '384', '', '76', '1605024000', '999', '1', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('433', '水果基本上是新鲜生食，仅有一部分经过加工成各种制品。', '', '', '1', '', '', '', '20201111/729cc91fa4a02958fdde2ef1b9e44a57.jpg', '20201111/729cc91fa4a02958fdde2ef1b9e44a57.jpg', '', '16', '<h2 style="margin: 30px 0px 0px; padding: 0px; font-size: 16px; color: rgb(49, 131, 177); text-indent: 10px; font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);">鲜果</h2><div class="detail" style="font-family: 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);"><p style="margin-top: 20px; margin-bottom: 0px; padding: 0px 10px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 26px; text-indent: 28px;">苹果。为蔷薇科植物苹果的果实，其性味甘、凉，入脾、胃经，具有生津、润肺、解暑、开胃、醒酒的功效。内含<a class="blue" href="http://ypk.39.net/yaopin/wss/7bc9e.html" target="_blank" style="color: rgb(51, 51, 51);">维生素C</a>和维生素B，含有易消化吸收，不必经过分解可直接被人体吸收的葡萄糖、果糖。没有成熟的水果里含淀粉多，较难消化，成熟过程中淀粉变成糖。苹果里还含有鞣质，所以削好的苹果放置时间久了就变红，德国也有用苹果治疗肠炎，称“摩罗化苹果疗法”。苹果制成苹果粉，是止泻剂。苹果里<a class="blue" href="http://hzpk.39.net/hz/hufu/ms/5d6dd.html" target="_blank" style="color: rgb(51, 51, 51);">矿物质</a>如钾、钙含量较多，严重水肿患者服排钾利尿药时多吃些苹果有利补钾，并可减少副作用。<a class="blue" href="http://zzk.39.net/zz/shengzhi/nxpg/a7779.html" target="_blank" style="color: rgb(51, 51, 51);">妊娠反应</a>期多吃苹果可补充维生素等营养，调解水盐及电解质平衡，防止因频繁<a class="blue" href="http://zzk.39.net/zz/fubu/89157.html" target="_blank" style="color: rgb(51, 51, 51);">呕吐</a>导致的中毒症。饭后吃苹果，可助消化，是由于内含苹果酸、酒石酸。</p><p style="margin-top: 20px; margin-bottom: 0px; padding: 0px 10px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 26px; text-indent: 28px;">梨。性味甘微寒，入心、肺、胃经，其功能为：生津止渴、清心润肺，除烦利尿，清热解毒，清喉消痰，降炎止咳。主要治疗：心经客热，肺热<a class="blue" href="http://zzk.39.net/zz/toubu/kou/504fc.html" target="_blank" style="color: rgb(51, 51, 51);">咳嗽</a>，痰多<a class="blue" href="http://zzk.39.net/zz/quanshen/a978f.html" target="_blank" style="color: rgb(51, 51, 51);">烦热</a>，津干口渴，声嘶<a class="blue" href="http://zzk.39.net/zz/toubu/kou/a9264.html" target="_blank" style="color: rgb(51, 51, 51);">失音</a>，眼<a class="blue" href="http://zzk.39.net/zz/toubu/yan/a67ad.html" target="_blank" style="color: rgb(51, 51, 51);">目赤</a>痛，风热灼盛，温病热盛，大小便不畅，疮毒，酒毒。但<a class="blue" href="http://zzk.39.net/zz/fubu/aa3bb.html" target="_blank" style="color: rgb(51, 51, 51);">脾胃虚寒</a>、便溏及产妇<a class="blue" href="http://zzk.39.net/zz/quanshen/aa3ca.html" target="_blank" style="color: rgb(51, 51, 51);">血虚</a>者慎食。梨内含有机酸（为苹果酸、柠檬酸），糖类（葡萄糠、蔗糖等），以及维生素B和C。</p><p style="margin-top: 20px; margin-bottom: 0px; padding: 0px 10px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 26px; text-indent: 28px;">香蕉。古时称甘蕉，为芭蕉科植物甘蕉的果实，性味甘、寒，入肺、大肠经。有清热、润肠、解毒的功效。治热病烦渴，<a class="blue" href="http://jbk.39.net/keshi/neike/xiaohua/48fd7.html" target="_blank" style="color: rgb(51, 51, 51);">便秘</a>，<a class="blue" href="http://jbk.39.net/keshi/waike/gc/9d195.html" target="_blank" style="color: rgb(51, 51, 51);">痔</a>血。香蕉皮甲醇提取物有抗真菌作用，可能是蕉皮素的作用。果实含淀粉0.5％，蛋白质1.3％，脂肪0.6％，糖类20％，并含维生素B、C、E，有5一羟色胺、去甲肾上腺素，有纤维素11.55％。香蕉所含糖中果糖和葡萄糖之比为1∶1，对治疗<a class="blue" href="http://zzk.39.net/zz/fubu/a889c.html" target="_blank" style="color: rgb(51, 51, 51);">脂肪痢</a>是合适的，也适用中毒性<a class="blue" href="http://zzk.39.net/zz/fubu/a72c4.html" target="_blank" style="color: rgb(51, 51, 51);">消化不良</a>。临床发现，<a class="blue" href="http://jbk.39.net/keshi/neike/neifenmi/49088.html" target="_blank" style="color: rgb(51, 51, 51);">糖尿病</a>人吃入香蕉中糖类，可使<a class="blue" href="http://jck.39.net/jiancha/huaxue/niao/9c5e5.html" target="_blank" style="color: rgb(51, 51, 51);">尿糖</a>相对降低，又因含矿物质较多，对水盐代谢恢复也有利。</p><p style="margin-top: 20px; margin-bottom: 0px; padding: 0px 10px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 26px; text-indent: 28px;">柑。为芸香料植物茶枝相、瓯相导多种柑类的成熟果实。性味甘酸、凉，有生津止渴、醒酒利尿的功能。其组成成分含橙皮甙、川陈皮素、挥发油，柑橘类水果中柑最适用于热病后体津液不足、口渴等症。柑中还含维生素C，此外，还有<a class="blue" href="http://jck.39.net/jiancha/huaxue/shjc/9c44f.html" target="_blank" style="color: rgb(51, 51, 51);">维生素B1</a>、B2、D、酮酸、葡萄糖、有机酸等。</p></div><p><br/></p>', '384', '', '76', '1605024000', '999', '1', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('436', '产品经理', '面议', '', '0', '1人', '', '北京市', '', '', '', '0', '<p><br/></p><section style="padding: 0px; margin: 0px; width: 566.578px; display: inline-block; vertical-align: top; color: rgb(102, 102, 102); font-family: 微软雅黑, arial, " hiragino="" sans="" font-size:="" white-space:="" background-color:=""><strong style="padding: 0px; margin: 0px; color: rgb(71, 71, 71);">岗位职责：</strong><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(71, 71, 71);">1、负责搜寻、筛选及储备股权投资项目，并能独立对具有投资价值的项目进行深入分析与论证，形成项目评估报告；</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(71, 71, 71);">2、负责根据程序完成项目立项工作，并能已立项项目实施尽职调查，完成有关项目风险评估工作；</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(71, 71, 71);">3、具有较强的领导、组织、协调能力，能胜任项目经理工作；</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(71, 71, 71);">4、负责收集、分析、整理和报告相关的市场信息，跟踪相关行业发展动态，开展有关调研工作，提交有关研究报告；重点关注股权投资涉及行业，以及行业内已投资企业上下游业务的发展变化情况，寻找业务机会，以促进公司股权投资项目行业内并购整合。</p></section><p><span style="color: rgb(102, 102, 102); font-family: 微软雅黑, arial, " hiragino="" sans="" font-size:="" background-color:="">&nbsp;</span></p><section style="padding: 0px; margin: 0px; width: 566.578px; display: inline-block; vertical-align: top; color: rgb(102, 102, 102); font-family: 微软雅黑, arial, " hiragino="" sans="" font-size:="" white-space:="" background-color:=""><strong style="padding: 0px; margin: 0px; color: rgb(71, 71, 71);">任职条件：</strong><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(71, 71, 71);">1、具有硕士研究生及以上学历，金融类、会计类、管理类、信息技术类专业的教育背景；</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(71, 71, 71);">2、具有八年以上专业PE/VC机构、券商、期货、投行等股权投资机构的工作经验；</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(71, 71, 71);">3、熟悉股权投资工作思路、细节要点，具有一定的财务、法律基础；</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(71, 71, 71);">4、熟悉热门行业的行业业态、发展趋势、技术特点和领先企业；</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(71, 71, 71);">5、具有清晰的细路和优秀的人际交往能力；</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(71, 71, 71);">6、具有适应经常出差的能力和客观条件。</p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 30px; color: rgb(71, 71, 71);">7、具有较强的领导力及抗压能力。</p></section><p><br/></p>', '391', '', '77', '1605024000', '999', '0', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('437', '百度', '', '', '0', '', '', 'http://www.baidu.com', '', '', '', '0', '', '394', '', '78', '1598544000', '999', '0', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('438', '网易', '', '', '0', '', '', 'http://www.163.com', '', '', '', '0', '', '394', '', '78', '1598544000', '999', '0', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('476', 'HMR海魅儿金箔眼膜淡化眼部细纹熊猫眼提拉紧致补水保湿学生眼贴', '', '', '0', '', '', '', '20211108/74048f97e366436da2f3fffdb1e4d368.jpg', '', '', '4', '<ul class="attributes-list" data-spm-anchor-id="2013.1.0.i8.295a302ddy5YKx" style="padding: 0px 15px; list-style: none; clear: both; font-family: tahoma, arial, " hiragino="" sans="" white-space:="" background-color:=""><li title="HMR/海魅儿" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">品牌:&nbsp;HMR/海魅儿</span></li><li title="金箔眼膜" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">品名:&nbsp;金箔眼膜</span></li><li title="中国" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">产地:&nbsp;中国</span></li><li title="京G妆网备字2020006149" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">批准文号:&nbsp;京G妆网备字2020006149</span></li><li title="混合性肤质" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">适合肤质:&nbsp;混合性肤质</span></li><li title="2021年" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">上市时间:&nbsp;2021年</span></li><li title="提亮眼周 缓解眼疲劳 改善眼部暗沉 淡化黑眼圈 补水保湿" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">功效:&nbsp;提亮眼周 缓解眼疲劳 改善眼部暗沉 淡化黑眼圈 补水保湿</span></li><li title="正常规格" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">规格类型:&nbsp;正常规格</span></li><li title="否" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">是否为特殊用途化妆品:&nbsp;否</span></li><li title="6对" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">净含量:&nbsp;6对</span></li><li title="3年" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">保质期:&nbsp;3年</span></li></ul><p style="text-align: left;"><br/></p>', '368', '[{"img":"20211108\/43b4525110e6c7d9048b69df36e78114.jpg","title":""},{"img":"20211108\/4388f8a3c5dd4b40e5e61a17f1e87dfc.jpg","title":""},{"img":"20211108\/c70dfac906033f4baadb85de94f68579.jpg","title":""},{"img":"20211108\/23bc423d1d249cb140d44eb676659168.jpg","title":""},{"img":"20211108\/74048f97e366436da2f3fffdb1e4d368.jpg","title":""}]', '73', '1636300800', '999', '0', '1', '<p style="text-align: left;"><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636361927305482.jpg" title="1636361927305482.jpg" alt="O1CN01Ls8Wpt1nzKPvJBXeM_!!2212783935160[1].jpg" style="text-align: center; white-space: normal;"/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636361930118578.jpg" title="1636361930118578.jpg" alt="O1CN01T7QH8h1nzKPi7jjbK_!!2212783935160[1].jpg" style="text-align: center; white-space: normal;"/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636361938893813.jpg" title="1636361938893813.jpg" alt="O1CN01j9LncS1nzKPj86CyB_!!2212783935160[1].jpg" style="text-align: center; white-space: normal;"/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636361943440559.jpg" title="1636361943440559.jpg" alt="O1CN01N722q71nzKPgHBuxN_!!2212783935160[1].jpg" style="text-align: center; white-space: normal;"/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636361948725085.jpg" title="1636361948725085.jpg" alt="O1CN01KZcasD1nzKPbkymrF_!!2212783935160[1].jpg" style="text-align: center; white-space: normal;"/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636361984246399.jpg" title="1636361984246399.jpg" alt="O1CN01faRcBL1nzKPi7jKfI_!!2212783935160[1].jpg" style="text-align: center; white-space: normal;"/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636361988850221.jpg" title="1636361988850221.jpg" alt="O1CN019cJUkF1nzKPZ12mHG_!!2212783935160[1].jpg" style="text-align: center; white-space: normal;"/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636361993129852.jpg" title="1636361993129852.jpg" alt="O1CN01uKNk7U1nzKPdI868r_!!2212783935160[1].jpg" style="text-align: center; white-space: normal;"/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636361997474769.jpg" title="1636361997474769.jpg" alt="O1CN01uD9WEL1nzKPSlAdRs_!!2212783935160[1].jpg" style="text-align: center; white-space: normal;"/></p>', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('462', ' 2021年', '', '', '0', '', '', '', '', '', '', '20', '<p style="line-height: 3em;"><strong><span style="font-size: 16px;">11月</span></strong><span style="font-size: 16px;">海魅儿水库新生补水面膜新品上市 。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">10月</span></strong><span style="font-size: 16px;">与北京东方丽树商贸有限公司合作到期且终止合作并注册海魅儿（北京）生物科技有限公司直营。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">10月</span></strong><span style="font-size: 16px;">海魅儿海魅儿焕颜精粹水新品上市。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">09月</span></strong><span style="font-size: 16px;">海魅儿魅丽约会霜全新包装及成分升级，并更名为海魅儿素颜约会霜。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">07月</span></strong><span style="font-size: 16px;">《风尚金模》合作设计师品牌发布秀的特邀嘉宾。</span></p><p style="line-height: 3em;"><span style="font-size: 16px;">&nbsp;</span></p><p><br/></p>', '400', '', '76', '1626019200', '1000', '0', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('466', '2018年', '', '', '0', '', '', '', '', '', '', '0', '<p style="line-height: 3em;"><strong><span style="font-size: 16px;">10月</span></strong><span style="font-size: 16px;">北京鸟巢金色大厅&nbsp;|&nbsp;海魅儿作为唯一指定赞助品牌参与电影《不可思异》首映典礼。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">09月</span></strong><span style="font-size: 16px;">受邀参加清华大学棒球联赛决赛，并作为赛事唯一参展单位参与其中。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">08月</span></strong><span style="font-size: 16px;">海魅儿亮采无痕臻护眼霜新品上市。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">06月</span></strong><span style="font-size: 16px;">海魅儿品牌举办“心系残障儿童 扶残济困 有你有我”公益活动，并向北京通州关爱中心捐赠食品、被褥等生活必须品。</span></p><p style="line-height: 3em;"><span style="font-size: 16px;">&nbsp;</span></p><p><br/></p>', '400', '', '76', '1528732800', '999', '0', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('464', '2020年', '', '', '0', '', '', '', '', '', '', '2', '<p style="line-height: 3em;"><strong><span style="font-size: 16px;">07月</span></strong><span style="font-size: 16px;">海魅儿修护蜗牛霜&amp;金箔眼膜新品上市。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">06月</span></strong><span style="font-size: 16px;">海魅儿金箔眼膜新品上市。</span></p><p><br/></p>', '400', '', '76', '1604592000', '999', '0', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('473', '素颜约会霜', '', '', '0', '', '', 'https://item.taobao.com/item.htm?ft=t&id=657924332415', '20211108/21e70d08094bc4bc4f3778caeb2d0bbd.jpg', '', '', '18', '<ul class="attributes-list" style="padding: 0px 15px; list-style: none; clear: both; font-family: tahoma, arial, " hiragino="" sans="" white-space:="" background-color:=""><li title="HMR/海魅儿" data-spm-anchor-id="2013.1.0.i2.3a0144f5y4gaB7" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">品牌:&nbsp;HMR/海魅儿</li><li title="素颜约会霜" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">品名:&nbsp;素颜约会霜</li><li title="中国" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">产地:&nbsp;中国</li><li title="小苍兰香" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">香味:&nbsp;小苍兰香</li><li title="粤G妆网备字2021518846" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">批准文号:&nbsp;粤G妆网备字2021518846</li><li title="36个月" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">保质期:&nbsp;36个月</li><li title="混合性肤质" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">适合肤质:&nbsp;混合性肤质</li><li title="其他/other" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">原料成分:&nbsp;其他/other</li><li title="乳液" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">物理形态:&nbsp;乳液</li><li title="香体 滋润 舒缓抗敏 祛黄提亮 鸡皮护理" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">功效:&nbsp;香体 滋润 舒缓抗敏 祛黄提亮 鸡皮护理</li><li title="正常规格" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">规格类型:&nbsp;正常规格</li><li title="否" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">是否为特殊用途化妆品:&nbsp;否</li><li title="60g" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;">净含量:&nbsp;60g</li></ul><p><br/></p>', '366', '[{"img":"20211112\/01da061f7fe0084211dd6d8443fe6545.jpg","title":""},{"img":"20211108\/0f3432b236e878f3f0abc83f56b3c694.jpg","title":"null"},{"img":"20211108\/b1a90500d33e0bf9b57570a04f5418ef.jpg","title":"null"},{"img":"20211108\/0974e2910ef4c6e3bb0b034f72be60fd.jpg","title":"null"},{"img":"20211108\/21e70d08094bc4bc4f3778caeb2d0bbd.jpg","title":"null"}]', '73', '1636646400', '999', '0', '1', '<p style="text-align: center;"><img src="/kb_006/public/ueditor/upload/image/20211108/1636359580114034.jpg" title="1636359580114034.jpg" alt="2345_image_file_copy_21.jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636359584271573.jpg" title="1636359584271573.jpg" alt="2345_image_file_copy_22.jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636359590497232.jpg" title="1636359590497232.jpg" alt="2345_image_file_copy_23.jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636359597123613.jpg" title="1636359597123613.jpg" alt="2345_image_file_copy_24.jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636359606139728.jpg" title="1636359606139728.jpg" alt="2345_image_file_copy_25.jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636359612568105.jpg" title="1636359612568105.jpg" alt="2345_image_file_copy_26.jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636359618108362.jpg" title="1636359618108362.jpg" alt="2345_image_file_copy_27.jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636359622119030.jpg" title="1636359622119030.jpg" alt="2345_image_file_copy_28.jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636359627509496.jpg" title="1636359627509496.jpg" alt="2345_image_file_copy_29.jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636359633661527.jpg" title="1636359633661527.jpg" alt="2345_image_file_copy_30.jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636359655119740.png" title="1636359655119740.png" alt="image.png"/></p>', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('475', '修护蜗牛霜', '', '', '0', '', '', 'https://item.taobao.com/item.htm?ft=t&id=657696588570', '20211108/3056d31cc53e88542d7399782e99bd8e.jpg', '', '', '12', '<ul class="attributes-list" style="padding: 0px 15px; list-style: none; clear: both; font-family: tahoma, arial, " hiragino="" sans="" white-space:="" background-color:=""><li title="HMR/海魅儿" data-spm-anchor-id="2013.1.0.i3.2c3b11728mUfV8" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">品牌:&nbsp;HMR/海魅儿</span></li><li title="蜗牛霜" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">品名:&nbsp;蜗牛霜</span></li><li title="中国" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">产地:&nbsp;中国</span></li><li title="面霜" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">乳液/面霜品类:&nbsp;面霜</span></li><li title="京G妆网备字2020006150" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">批准文号:&nbsp;京G妆网备字2020006150</span></li><li title="所有肤质" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">适合肤质:&nbsp;所有肤质</span></li><li title="2020年" data-spm-anchor-id="2013.1.0.i2.2c3b11728mUfV8" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">上市时间:&nbsp;2020年</span></li><li title="蜗牛人参根提取物 其他/other" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">原料成分:&nbsp;蜗牛人参根提取物 其他/other</span></li><li title="保湿 提拉紧致 滋润补水 改善黯沉 舒缓修护" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">功效:&nbsp;保湿 提拉紧致 滋润补水 改善黯沉 舒缓修护</span></li><li title="正常规格" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">规格类型:&nbsp;正常规格</span></li><li title="否" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">是否为特殊用途化妆品:&nbsp;否</span></li><li title="50g" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">净含量:&nbsp;50g</span></li><li title="滋润型" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">质地:&nbsp;滋润型</span></li><li title="3年" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">保质期:&nbsp;3年</span></li></ul><p><br/></p>', '367', '[{"img":"20211108\/3056d31cc53e88542d7399782e99bd8e.jpg","title":"null"},{"img":"20211108\/fcb74b966949347789623ab5f35a3525.jpg","title":"null"},{"img":"20211108\/9139a723099e2a462db7fdc683c0de84.jpg","title":"null"},{"img":"20211108\/4a9864102a4cd95052544b8465f1c584.jpg","title":"null"},{"img":"20211108\/34fc34a39d99446d6a552a15992583f6.jpg","title":"null"}]', '73', '1636646400', '999', '0', '1', '<p><img src="/kb_006/public/ueditor/upload/image/20211108/1636361576138463.jpg" title="1636361576138463.jpg" alt="O1CN01mmblZh1nzKPYlHqFW_!!2212783935160[1].jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636361588138291.jpg" title="1636361588138291.jpg" alt="O1CN01koDY9J1nzKPWcPi3j_!!2212783935160[1].jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636361596737822.jpg" title="1636361596737822.jpg" alt="O1CN01snsIKg1nzKPauLr1T_!!2212783935160[1].jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636361601376140.jpg" title="1636361601376140.jpg" alt="O1CN01KK9wxr1nzKPawNbIs_!!2212783935160[1].jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636361607867047.jpg" title="1636361607867047.jpg" alt="O1CN01rOLxFe1nzKPYlImUM_!!2212783935160[1].jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636361612120028.jpg" title="1636361612120028.jpg" alt="O1CN01Ey2bhx1nzKPYAK0RT_!!2212783935160[1].jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636361616884948.jpg" title="1636361616884948.jpg" alt="O1CN01B3iwEI1nzKPfQUcSL_!!2212783935160[1].jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636361621135713.jpg" title="1636361621135713.jpg" alt="O1CN01yZ9yUN1nzKPgYYLyk_!!2212783935160[1].jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636361627902333.jpg" title="1636361627902333.jpg" alt="O1CN01PX2d011nzKPYlIVr3_!!2212783935160[1].jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636361632743460.jpg" title="1636361632743460.jpg" alt="O1CN017fWGGJ1nzKPawMra2_!!2212783935160[1].jpg"/><img src="/kb_006/public/ueditor/upload/image/20211108/1636361637136940.jpg" title="1636361637136940.jpg" alt="O1CN01ROhXtg1nzKPcRXa7b_!!2212783935160[1].jpg"/></p>', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('477', '水库新生补水面膜', '', '', '0', '', '', 'https://item.taobao.com/item.htm?ft=t&id=660258875468', '20211112/815bbd5abaeafdae62efb8c872c6adbf.jpg', '', '', '5', '<p>品牌: HMR/海魅儿</p><p>品名: 水库新生补水面膜</p><p>产地: 中国</p><p>颜色分类: 萱草橙 深松绿</p><p>面膜分类: 贴片式</p><p>批准文号: 粤G妆网备字2021623997</p><p>适合肤质: 任何肤质</p><p>上市时间: 2021年</p><p>原料成分: 洋甘菊</p><p>功效: 密集修护 补水保湿 提升气色 舒缓修护 细腻光滑</p><p>规格类型: 正常规格</p><p>是否为特殊用途化妆品: 否</p><p>净含量: 6片</p><p>保质期: 3年</p>', '409', '[{"img":"20211112\/b3a26274cb6c0231f9188877d7541058.jpg","title":""},{"img":"20211112\/7a5ec4fde494fb438650de24d43afe0b.jpg","title":""},{"img":"20211112\/b55222dfd786cb8a00782bb278120541.jpg","title":""},{"img":"20211112\/cb521bc347808e61d75abb521203bf4d.jpg","title":""},{"img":"20211112\/144b6f0ef5aa477f9075d2c391dd3f1a.jpg","title":""}]', '73', '1636646400', '999', '0', '1', '<p><img src="/kb_006/public/ueditor/upload/image/20211112/1636696169929099.jpg" style="" title="1636696169929099.jpg"/></p><p><img src="/kb_006/public/ueditor/upload/image/20211112/1636696169155129.jpg" style="" title="1636696169155129.jpg"/></p><p><img src="/kb_006/public/ueditor/upload/image/20211112/1636696170354108.jpg" style="" title="1636696170354108.jpg"/></p><p><img src="/kb_006/public/ueditor/upload/image/20211112/1636696171139392.jpg" style="" title="1636696171139392.jpg"/></p><p><img src="/kb_006/public/ueditor/upload/image/20211112/1636696171673619.jpg" style="" title="1636696171673619.jpg"/></p><p><img src="/kb_006/public/ueditor/upload/image/20211112/1636696171494176.jpg" style="" title="1636696171494176.jpg"/></p><p><img src="/kb_006/public/ueditor/upload/image/20211112/1636696172910251.jpg" style="" title="1636696172910251.jpg"/></p><p><img src="/kb_006/public/ueditor/upload/image/20211112/1636696172178022.jpg" style="" title="1636696172178022.jpg"/></p><p><img src="/kb_006/public/ueditor/upload/image/20211112/1636696173915931.jpg" style="" title="1636696173915931.jpg"/></p><p><br/></p>', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('474', '焕颜精粹水', '', '', '0', '', '', '', '20211108/2bea19f21d2c2e46da5504ae99430133.jpg', '20211108/2bea19f21d2c2e46da5504ae99430133.jpg', '', '4', '<ul class="attributes-list" data-spm-anchor-id="2013.1.0.i14.3a0144f5y4gaB7" style="padding: 0px 15px; list-style: none; clear: both; font-family: tahoma, arial, " hiragino="" sans="" white-space:="" background-color:=""><li title="HMR/海魅儿" data-spm-anchor-id="2013.1.0.i2.3a0144f5y4gaB7" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">品牌:&nbsp;HMR/海魅儿</span></li><li title="素颜约会霜" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">品名:&nbsp;素颜约会霜</span></li><li title="中国" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">产地:&nbsp;中国</span></li><li title="小苍兰香" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">香味:&nbsp;小苍兰香</span></li><li title="粤G妆网备字2021518846" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">批准文号:&nbsp;粤G妆网备字2021518846</span></li><li title="36个月" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">保质期:&nbsp;36个月</span></li><li title="混合性肤质" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">适合肤质:&nbsp;混合性肤质</span></li><li title="其他/other" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">原料成分:&nbsp;其他/other</span></li><li title="乳液" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">物理形态:&nbsp;乳液</span></li><li title="香体 滋润 舒缓抗敏 祛黄提亮 鸡皮护理" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">功效:&nbsp;香体 滋润 舒缓抗敏 祛黄提亮 鸡皮护理</span></li><li title="正常规格" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">规格类型:&nbsp;正常规格</span></li><li title="否" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">是否为特殊用途化妆品:&nbsp;否</span></li><li title="60g" style="margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;"><span style="font-size: 14px;">净含量:&nbsp;60g</span></li></ul><p><br/></p>', '406', '[{"img":"20211108\/2bea19f21d2c2e46da5504ae99430133.jpg","title":""},{"img":"20211108\/b308ebf31575bcafebfb4aae3c46eb4b.jpg","title":""},{"img":"20211108\/176927dbdcf1dc67d733b93d316fba14.jpg","title":""},{"img":"20211108\/aa166fe04076973553ea42c92adc9919.jpg","title":""}]', '73', '1636300800', '999', '0', '1', '<p><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359041992398.jpg" title="1636359041992398.jpg" alt="2345_image_file_copy_6.jpg" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359048104472.jpg" title="1636359048104472.jpg" alt="2345_image_file_copy_7.jpg" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359055677750.jpg" title="1636359055677750.jpg" alt="2345_image_file_copy_8.jpg" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359060131746.jpg" title="1636359060131746.jpg" alt="2345_image_file_copy_9.jpg" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359065390685.jpg" title="1636359065390685.jpg" alt="2345_image_file_copy_10.jpg" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359072119886.jpg" title="1636359072119886.jpg" alt="2345_image_file_copy_11.jpg" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359078985255.jpg" title="1636359078985255.jpg" alt="2345_image_file_copy_12.jpg" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359085111361.jpg" title="1636359085111361.jpg" alt="2345_image_file_copy_13.jpg" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359090156291.jpg" title="1636359090156291.jpg" alt="2345_image_file_copy_14.jpg" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359095972948.jpg" title="1636359095972948.jpg" alt="2345_image_file_copy_15.jpg" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359104373472.jpg" title="1636359104373472.jpg" alt="2345_image_file_copy_16.jpg" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/><img src="http://wangchao.a.kbyun.com/kb_006/public/ueditor/upload/image/20211108/1636359124111792.png" title="1636359124111792.png" alt="1636359079(1).png" style="white-space: normal; padding: 0px; margin: 0px auto; vertical-align: middle; border: none; max-width: 100%; display: inline-block; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, " hiragino="" sans="" text-align:="" background-color:=""/></p>', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('465', ' 2019年', '', '', '0', '', '', '', '', '', '', '0', '<p style="line-height: 3em;"><strong><span style="font-size: 16px;">08月</span></strong><span style="font-size: 16px;">北京希尔顿饭店&nbsp;|&nbsp;海魅儿携手糖果交友网举办“缘定七夕”&nbsp;300人高端交友专场。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">07月</span></strong><span style="font-size: 16px;">海魅儿“普吉岛魅力行”代理答谢会在泰国普吉举行。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">05月</span></strong><span style="font-size: 16px;">金色细作五件套上市。</span></p><p><br/></p>', '400', '', '76', '1556985600', '999', '0', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('467', '2017年', '', '', '0', '', '', '', '', '', '', '0', '<p style="line-height: 3em;"><strong><span style="font-size: 16px;">11月</span></strong><span style="font-size: 16px;">海魅儿高层受邀参加2014-2015世界汽车模特大赛大中华区总决赛颁奖盛典。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">07月</span></strong><span style="font-size: 16px;">海魅儿鱼子精华面膜&amp;补水保湿面膜新品上市。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">07月</span></strong><span style="font-size: 16px;">海魅儿品牌与共享巴士合作，推出海魅儿电动巴士，传播“绿色出行，健康生活“新概念 。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">06月</span></strong><span style="font-size: 16px;">海魅儿在北京地铁四号线植入灯箱广告。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">05月</span></strong><span style="font-size: 16px;">电影《超凡战队》首映礼，海魅儿品牌作为唯一媒体赞助商参展。</span></p><p><br/></p>', '400', '', '76', '1493913600', '999', '0', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('468', '2016年', '', '', '0', '', '', '', '', '', '', '0', '<p style="line-height: 3em;"><strong><span style="font-size: 16px;">11月</span></strong><span style="font-size: 16px;">海魅儿携手优米网&nbsp;脱离单身，暖冬相亲会。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">10月</span></strong><span style="font-size: 16px;">海魅儿助阵乐视网星月榜样盛典10月13日盛大开幕。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">07月</span></strong><span style="font-size: 16px;">海魅儿携手《露水红颜》首映发布会，与魅粉共享盛典。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">05月</span></strong><span style="font-size: 16px;">海魅儿精华液新品上市。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">04月</span></strong><span style="font-size: 16px;">海魅儿携手</span><span style="font-size: 16px;">乐视网</span><span style="font-size: 16px;">-开启会员积分换玻尿酸。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">01月</span></strong><span style="font-size: 16px;">海魅儿抗皱修护平衡乳新品上市。</span></p><p><br/></p>', '400', '', '76', '1636646400', '999', '0', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('469', '2015年', '', '', '0', '', '', '', '', '', '', '1', '<p style="line-height: 3em;"><strong><span style="font-size: 16px;">11月</span></strong><span style="font-size: 16px;">来自于《美容时报》、《瑞丽》、《</span><span style="font-size: 16px;">悦己</span><span style="font-size: 16px;">》、《cici姐妹》、《</span><span style="font-size: 16px;">芭莎珠宝</span><span style="font-size: 16px;">》、《米娜》、《私人飞机》等众媒体扎堆贺海魅儿品牌回馈月太给力!</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">10月</span></strong><span style="font-size: 16px;">海魅儿倾情赞助青春荷尔蒙大片《女生宿舍》，全场100多家媒体争相报道。海魅儿预祝《女生宿舍》票房大卖！</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">09月</span></strong><span style="font-size: 16px;">广州国际美博会力邀海魅儿入展。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">09月</span></strong><span style="font-size: 16px;">海魅儿独家赞助网络剧&nbsp;《角色2之花花公子》由马晓辉导演自导自演。09月7日星美国际影城首映</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">07月</span></strong><span style="font-size: 16px;">海魅儿在北京首都T3航站楼投放灯箱广告。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">05月</span></strong><span style="font-size: 16px;">海魅儿皇唐面脂上市，皇唐面脂全称皇唐润养修护面膜，互联网第一瓶琉璃白瓷甁樽，堪称“O2O思维的封顶力作”。传承唐元古方，提炼研取全球甄选十味珍稀植物精粹的一款高端护肤面膜。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">04月</span></strong><span style="font-size: 16px;">海魅儿的地铁广告呼家楼地铁站一经上线，海魅儿地铁广告采取QA问答方式，俏皮又不失严谨，短短的一句话就道出了海魅儿玻尿酸原液的真谛。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">01月</span></strong><span style="font-size: 16px;">海魅儿携手年度谍战大戏《王牌》发布会。</span></p><p><br/></p>', '400', '', '76', '1420992000', '999', '0', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('470', '2014年', '', '', '0', '', '', '', '', '', '', '2', '<p style="line-height: 3em;"><strong><span style="font-size: 16px;">12月</span></strong><span style="font-size: 16px;">海魅儿牵手</span><a href="https://www.baike.com/wikiid/7291398090149295917?from=wiki_content&prd=innerlink" style="font-size: 16px; text-decoration: underline;"><span style="font-size: 16px;">百合网</span></a><span style="font-size: 16px;">、优米网助你零距离相爱。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">09月</span></strong><span style="font-size: 16px;">海魅儿品牌第一个专柜正式落座于万达广场新世界百货1F。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">07月</span></strong><span style="font-size: 16px;">品质至上励善共赢--海魅儿CSR，走进海淀区聋儿康复中心，关怀孩童，情满天下。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">06月</span></strong><span style="font-size: 16px;">海魅儿百万女神秀 颁奖典礼暨新品上市发布会，杨恭如成为本次发布会的特邀嘉宾。&nbsp;</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">06月</span></strong><span style="font-size: 16px;">海魅儿白茶毛孔细致卸妆油新品上市。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">05月</span></strong><span style="font-size: 16px;">海魅儿魅丽约会霜产品新品上市。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">01月</span></strong><span style="font-size: 16px;">成功开启“海魅儿百万女神秀”06月份圆满结束。</span></p><p><br/></p>', '400', '', '76', '1389456000', '999', '0', '1', '', '', '', '');
INSERT INTO `6_tp_archives` VALUES ('471', '2013年', '', '', '0', '', '', '', '', '', '', '0', '<p style="line-height: 3em;"><strong><span style="font-size: 16px;">2013年中旬</span></strong><span style="font-size: 16px;">香港麗麟国际生物科技集团有限公司和北京东方丽树商贸有限公司多次会晤，最终把HMR海魅儿品牌授权给东方丽树负责宣传、销售和售后。</span></p><p style="line-height: 3em;"><strong><span style="font-size: 16px;">2013年</span></strong><span style="font-size: 16px;">HMR海魅儿在大陆和香港正式注册，同年10月海魅儿第一款产品：玻尿酸原液正式对外销售，短短三个月就风靡了大陆地区，累计销售达到30万盒。</span></p><p style="line-height: 3em;"><span style="font-size: 16px;">&nbsp;</span></p><p><br/></p>', '400', '', '76', '1378915200', '999', '0', '1', '', '', '', '');

-- ----------------------------
-- Records for `6_tp_auth_group`
-- ----------------------------
INSERT INTO `6_tp_auth_group` VALUES ('1', '超级管理员', '1', '1,2,5,6,67,48,49,59,68,82,7,31,32,56,57,58,8,9,10,11,12,43,44,46,47,74,75,76,77,88,89,90,91,92,101,13,14,15,16,17,41,42,51,60,72,73,78,79,81,85,86,18,19,20,21,22,52,26,27,53,54,55,71,83,87,28,29,30,50,80,33,34,35,36,37,38,100,45,61,62,63,64,66,69,70,99,40,23,24,25,65,84,93,94,95,96,97,98');
INSERT INTO `6_tp_auth_group` VALUES ('2', '系统管理员', '1', '1,2,5,6,59,68,82,8,9,10,11,12,43,44,46,47,74,75,76,77,88,89,90,91,92,101,13,41,42,51,60,72,73,78,79,81,85,86,26,55,36,38,100,45,61,62,63,64,66,69,70,99,84,93');

-- ----------------------------
-- Records for `6_tp_auth_group_access`
-- ----------------------------
INSERT INTO `6_tp_auth_group_access` VALUES ('1', '1');
INSERT INTO `6_tp_auth_group_access` VALUES ('4', '2');
INSERT INTO `6_tp_auth_group_access` VALUES ('11', '2');
INSERT INTO `6_tp_auth_group_access` VALUES ('12', '2');

-- ----------------------------
-- Records for `6_tp_auth_rule`
-- ----------------------------
INSERT INTO `6_tp_auth_rule` VALUES ('1', 'admin/Conf/conflst', '系统设置', '1', '1', '', '0', 'fa-gear', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('2', 'admin/Conf/conflst', '配置列表', '1', '1', '', '1', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('5', 'admin/Conf/add', '添加配置', '1', '1', '', '2', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('6', 'admin/Conf/edit', '编辑配置', '1', '1', '', '2', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('7', 'admin/ModelFields', '字段管理', '1', '1', '', '0', 'fa-tasks', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('8', 'admin/Content', '文档管理', '1', '1', '', '0', 'fa-file-text', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('9', 'admin/Content/lst', '文章列表', '1', '1', '', '8', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('10', 'admin/Content/add', '文章添加', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('11', 'admin/Content/edit', '文章编辑', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('12', 'admin/Content/del', '文章删除', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('13', 'admin/Cate/', ' 栏目管理', '1', '1', '', '0', 'fa-sitemap', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('14', 'admin/Cate/lst', '栏目列表', '1', '1', '', '13', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('15', 'admin/Cate/add', '栏目添加', '1', '1', '', '13', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('16', 'admin/Cate/edit', '栏目编辑', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('17', 'admin/Cate/del', '栏目删除', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('18', 'admin/AuthRule', '规则配置', '1', '1', '', '0', 'fa-lock', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('19', 'admin/AuthRule/lst', '规则管理', '1', '1', '', '18', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('20', 'admin/AuthRule/add', '规则添加', '1', '1', '', '18', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('21', 'admin/AuthRule/edit', '规则编辑', '1', '1', '', '18', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('22', 'admin/AuthRule/del', '规则删除', '1', '1', '', '18', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('23', 'admin/AuthGroup/lst', '用户组管理', '1', '1', '', '40', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('24', 'admin/AuthGroup/power', '用户组权限编辑', '1', '1', '', '40', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('25', 'admin/AuthGroup/del', '用户组删除', '1', '1', '', '40', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('26', 'admin/Admin/', '管理员', '1', '1', '', '0', 'fa-user', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('27', 'admin/Admin/lst', '管理员列表', '1', '1', '', '26', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('28', 'admin/Model', '模型管理', '1', '1', '', '0', 'fa-maxcdn', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('29', 'admin/Model/lst', '模型列表', '1', '1', '', '28', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('30', 'admin/Model/add', '模型添加', '1', '1', '', '28', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('31', 'admin/ModelFields/lst', '字段列表', '1', '1', '', '7', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('32', 'admin/ModelFields/add', '字段添加', '1', '1', '', '7', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('33', 'admin/Note', '采集管理', '1', '1', '', '0', 'fa-bug', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('34', 'admin/Note/addlistrules', '添加采集节点', '1', '1', '', '33', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('35', 'admin/Note/notelist', ' 采集节点列表', '1', '1', '', '33', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('36', 'admin/Ad/lst', '广告管理', '1', '1', '', '0', 'fa-video-camera', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('37', 'admin/Adpos/lst', '广告位管理', '1', '1', '', '36', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('38', 'admin/Ad/lst', '广告列表管理', '1', '1', '', '36', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('40', 'admin/AuthGroup/lst', '用户组配置', '1', '1', '', '0', 'fa-group', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('41', 'admin/Cate/changestatus', '栏目ajax修改', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('42', 'admin/Cate/ajaxlst', 'ajax获取子栏目ID', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('43', 'admin/Content/ajaxDelImg', '文档图片ajax删除', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('44', 'admin/Content/upimg', 'ajax上传图片', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('45', 'admin/Ad/delImg', 'ajax删除图片', '1', '1', '', '36', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('46', 'admin/Content/addselect', '添加文章', '1', '1', '', '8', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('47', 'admin/Content/ajaxGetModelId', 'ajax获取modelid', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('48', 'admin/Conf/cftype', '配置分类', '1', '1', '', '1', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('49', 'admin/Conf/lst', '设置字段', '1', '1', '', '1', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('50', 'admin/Model/edit', '编辑模型', '1', '1', '', '28', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('51', 'admin/Cate/upimg', '栏目ajax上传图片', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('52', 'admin/AuthRule/ajaxlst', '栏目展开', '1', '1', '', '18', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('53', 'admin/Admin/changeStatus', '状态修改', '1', '1', '', '26', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('54', 'admin/Admin/add', '添加管理员', '1', '1', '', '26', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('55', 'admin/Admin/edit', '编辑管理员', '1', '1', '', '26', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('56', 'admin/ModelFields/edit', '字段编辑', '1', '1', '', '7', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('57', 'admin/ModelFields/del', '字段删除', '1', '1', '', '7', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('58', 'admin/ModelFields/ajaxdel', 'ajax删除字段', '1', '1', '', '7', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('59', 'admin/Index/index', '后台首页', '1', '1', '', '1', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('60', 'admin/Cate/del_sort', '栏目批量排序', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('61', 'admin/Adpos/add', '广告位添加', '1', '1', '', '36', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('62', 'admin/Ad/add', '广告添加', '1', '1', '', '36', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('63', 'admin/Ad/edit', '广告编辑', '1', '1', '', '36', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('64', 'admin/Ad/changeStatus', 'ajax广告状态修改', '1', '1', '', '36', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('65', 'admin/AuthGroup/edit', '用户组编辑', '1', '1', '', '40', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('66', 'admin/Adpos/edit', ' 广告位编辑', '1', '1', '', '36', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('67', 'admin/Conf/del', '配置删除', '1', '1', '', '2', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('68', 'admin/Admin/logout', '系统退出', '1', '1', '', '1', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('69', 'admin/Adpos/del', '广告位删除', '1', '1', '', '36', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('70', 'admin/Ad/del', '广告删除', '1', '1', '', '36', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('71', 'admin/Admin/del', '管理员删除', '1', '1', '', '26', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('72', 'admin/Cate/ajaxcateinfo', '栏目模版继承', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('73', 'admin/Cate/delimg', 'ajax栏目图片删除', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('74', 'admin/Content/examine', '查看文章详细', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('75', 'admin/Content/edits', '站点文档管理', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('76', 'admin/Content/adds', '站点文档添加', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('77', 'admin/Content/lsts', '站点文章列表查看', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('78', 'admin/Cate/catelist', '站点栏目管理', '1', '1', '', '13', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('79', 'admin/Cate/edits', '站点栏目编辑', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('80', 'admin/Model/ajaxdel', '删除模型', '1', '1', '', '28', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('81', 'admin/Cate/adds', '站点栏目添加', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('82', 'admin/Conf/bak', '数据库备份', '1', '1', '', '1', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('83', 'admin/Admin/operation', '操作日志', '1', '1', '', '26', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('84', 'admin/Message/index', '查看留言', '1', '1', '', '0', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('85', 'admin/Cate/dels', '站点管理删除栏目', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('86', 'admin/Cate/endels', '站点管理删除英文栏目', '1', '1', '', '13', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('87', 'admin/Admin/dellstoperation', '删除日志', '1', '1', '', '26', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('88', 'admin/Content/show_sort', '站点管理批量修改显示状态', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('89', 'admin/Content/home_sort', '站点管理批量修改推荐状态', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('90', 'admin/Content/dels_sort', '站点管理批量删除内容', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('91', 'admin/Content/arshow', '站点管理ajax异步修改内容显示状态', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('92', 'admin/Content/arhome', '站点管理ajax异步修改内容推荐状态', '1', '1', '', '8', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('93', 'admin/Message/index', '留言列表', '1', '1', '', '84', '', '1');
INSERT INTO `6_tp_auth_rule` VALUES ('94', 'admin/classify/index', '分类管理', '1', '1', '', '0', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('95', 'admin/classify/adds', '分类添加', '1', '1', '', '94', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('96', 'admin/classify/changestatus', '状态', '1', '1', '', '94', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('97', 'admin/classify/del', '删除', '1', '1', '', '94', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('98', 'admin/classify/edits', '修改', '1', '1', '', '94', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('99', 'admin/ad/uploadimg', '图片上传', '1', '1', '', '36', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('100', 'admin/ad/upd', '编辑', '1', '1', '', '38', '', '0');
INSERT INTO `6_tp_auth_rule` VALUES ('101', 'admin/content/top', '置顶', '1', '1', '', '8', '', '0');

-- ----------------------------
-- Records for `6_tp_cate`
-- ----------------------------
INSERT INTO `6_tp_cate` VALUES ('360', '产品中心', '', '', '', '', '', '', '0', '1', '1', '', '20211104/496576f689607dbc4157d5984d17b338.jpg', '1', 'pro.html', 'pro_info.html', 'pro.html', '1', '999', '', '73', '0', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('361', '关于海魅儿', '', '', '', '', '', '', '0', '1', '1', '', '20211104/cd7591843872aa90ee2074ebc7a4516e.jpg', '1', 'taste.html', 'taste_info.html', 'info.html', '1', '999', '', '74', '0', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('362', '品牌大事记', '', '', '', '', '', '', '0', '1', '1', '', '20211109/8700066d530d17cdc35a0394c778cc5b.jpg', '1', 'news.html', 'news_info.html', 'info.html', '1', '999', '', '76', '0', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('363', '新闻动态', '', '', '', '', '', '', '0', '1', '1', '', '20211108/224c83031a6f19eb079ce4b2971a8983.png', '1', 'news.html', 'news_info.html', 'info.html', '1', '999', '', '76', '0', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('364', '试用反馈', '', '', '', '', '', '', '0', '1', '1', '', '20211110/025199a7fdd8f4fd981df8fe1b6328ea.jpg', '1', 'join.html', 'info.html', 'info.html', '1', '999', '', '77', '0', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('366', '素颜约会霜', '2014年至今，产品升级4次', 'cn', '', '', '', '<h3 data-title="HMR海魅儿素颜约会霜舒缓保湿补水身体乳学生少女男士隔离面霜" data-spm-anchor-id="2013.1.iteminfo.i0.459644f5Au9hu8">2014年上市，至今5次更新迭代。</h3><p><br/></p>', '0', '1', '1', '', '20211104/9fbc026730d634566b3530fc314a7811.jpg', '1', 'pro.html', 'pro_info.html', 'pro.html', '1', '4', '', '73', '360', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('367', '修护蜗牛霜', '富含人参根提取物，蜗牛分泌物滤液。', 'cn', '', '', '', '<p>富含人参根提取物，蜗牛分泌物滤液。</p>', '0', '1', '1', '', '20211112/f43f874f2d0dda5245ce394e5aee6ce6.jpg', '1', 'pro.html', 'pro_info.html', 'pro.html', '1', '3', '', '73', '360', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('409', '水库新生补水面膜', '蕴含多种植物提取物', 'cn', '', '', '', '<p>温和补水保湿&nbsp; 舒缓肌肤干燥</p>', '0', '1', '1', '', '20211112/9b0117ae569fe734ae4ea9e8e58d41b2.jpg', '1', 'pro.html', 'pro_info.html', 'pro.html', '1', '5', '', '73', '360', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('368', '金箔眼膜', '一款学生党都可用的眼膜', 'cn', '', '', '', '<p>淡化眼部细纹 改善熊猫眼 提拉紧致</p>', '0', '1', '1', '', '20211104/1670a50e1b0bb7b4e8ed4bb4b9280943.jpg', '1', 'pro.html', 'pro_info.html', 'pro.html', '1', '1', '', '73', '360', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('406', '焕颜精粹水', '', 'cn', '', '', '', '', '0', '1', '1', '', '20211112/6dbce34c8156335f66f78ab26d49322e.jpg', '1', 'pro.html', 'pro_info.html', 'pro.html', '1', '2', '', '73', '360', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('407', '品牌故事', '', 'cn', '', '', '', '', '0', '1', '1', '', '', '1', 'news.html', 'news_info.html', 'info.html', '1', '999', '', '76', '400', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('384', '新闻动态', '', 'cn', '', '', '', '', '0', '1', '1', '', '', '1', 'news.html', 'news_info.html', 'info.html', '1', '999', '', '76', '363', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('388', '试用反馈', '', '', '', '', '', '', '0', '1', '1', '', '', '1', 'join.html', 'info.html', 'info.html', '2', '999', '', '77', '364', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('400', '品牌大事记', '', 'cn', '', '', '', '', '0', '1', '1', '', '', '1', 'news.html', 'news_info.html', 'info.html', '1', '999', '', '76', '362', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('390', '试用反馈', '', '', '', '', '', '', '0', '1', '1', '', '', '2', 'message.html', 'message.html', 'message.html', '2', '999', '', '77', '388', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('391', '招聘信息', '', 'cn', '', '', '', '', '0', '1', '1', '', '', '1', 'join.html', 'info.html', 'info.html', '2', '999', '', '77', '388', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('392', '营销网络', '', '', '', '', '', '<p><span style="font-size: 20px;"><strong>待更新。。。</strong></span></p>', '0', '0', '1', '', '', '1', 'sale.html', 'sale.html', 'sale.html', '2', '999', '', '79', '364', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('394', '友情链接', '', '', '', '', '', '', '0', '1', '1', '', '', '1', '4', 'article_article.htm', 'index_article.htm', '0', '999', '', '78', '0', '1', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('398', '华北地区', '', 'cn', '', '', '', '', '0', '1', '1', '', '', '1', 'sale.html', 'sale.html', 'sale.html', '2', '999', '', '79', '392', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('399', '华中地区', '', 'cn', '', '', '', '', '0', '1', '1', '', '', '1', 'sale.html', 'sale.html', 'sale.html', '2', '999', '', '79', '392', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('412', '品牌简介', '', 'cn', '', '', '', '<p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; text-indent: 0em; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 2em;"><span style="padding: 0px; margin: 0px; color: rgb(255, 192, 0);"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 20px;">品牌介绍&nbsp;</span></strong></span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; text-indent: 0em; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em;"><span style="padding: 0px; margin: 0px; color: rgb(255, 192, 0);"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 20px;"><br data-filtered="filtered" style="padding: 0px; margin: 0px;"/></span></strong></span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">HMR海魅儿，始创于2013年，是香港丽麟国际生物科技集团有限公司旗下国潮护肤精品。专注高品质国潮护肤产品，志做美丽奇迹与浪漫的完美化身。以融贯东西的创新研发，让女性肌肤如“海洋”般锁水滋润，从源头缓解多类老化问题，滋养肌肤健康，重塑娇嫩美肌，尽显东方女性的迷人魅力。</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;针对层出不穷的肌肤问题，HMR海魅儿精妙结合东方女性的肤质特点和老化规律，从古方典籍中撷取养颜灵感，精研独特配方，并从源头甄采原材，以先进工艺萃取天然精华、凝练安心成分，创新带来值得人们由衷信赖的美肤产品，无微不至呵护每寸肌肤。</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;海纳千美，魅力无限。HMR海魅儿以化繁为简的设计尽显国潮风尚，赋予系列产品以鲜明的人文特色和出众的东方意蕴，在触手可及的精致中体味匠心，在优雅意境中感知国潮新意，在令人惊艳的使用效果中焕新美丽，让爱美女性对国产护肤产品充满自信，成为国潮护肤优选品牌。</span></p><p><br/></p>', '0', '1', '1', '', '', '2', 'taste.html', 'taste_info.html', 'info.html', '1', '4', '', '74', '361', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('411', '品牌故事', '', 'cn', '', '', '', '<p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; text-indent: 0em; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-align: center;"><span style="padding: 0px; margin: 0px; color: rgb(255, 192, 0);"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 20px;">品牌故事</span></strong></span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; text-indent: 0em; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-align: center;"><span style="padding: 0px; margin: 0px; color: rgb(255, 192, 0);"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 20px;">&nbsp;</span></strong></span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp; 在古希腊神话中，HMR海魅儿是众神之祖母忒堤斯的小女儿，她生长在蔚蓝深海，与日月共舞，与海豚嬉戏，汲取深海植物能量，散发无限活力魅丽。她的美是爱与智慧的化身，她的魅是浪漫和纯净的升华，正如每一个追求美丽与智慧的你。</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp; 与欧美女性相较，东方女性的皮肤更为细致、水嫩，但由于角质层较薄，因此肌肤屏障容易受损，“锁水”能力较弱，对外界的各种刺激更为敏感，导致细纹、色斑、黯沉等老态、病态现象。HMR 海魅儿将对东方女性的尊重与关爱倾注其中，在配方研发上针对东方人的肌肤特质进行了个性化创新，并将具有独特补水效果的玻尿酸作为旗下的第一款产品。</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp; 面对市面上良莠不齐的玻尿酸产品，HMR 海魅儿坚守品质良心，不仅对配方中的每种成分都进行反复调配，确保在亲肤感、柔和感和体验感上更胜一筹，更契合东方女性的护肤所需。经过上百次的亲测试验和持续改良，国内真正意义上的“玻尿酸原液”正式问世。2013年10月，HMR 海魅儿在中国大饭店召开玻尿酸新品发布会，有多位亲身验证过产品效果的香港明星现身鉴证，迅速在国内掀起玻尿酸原液热潮，短短三个月就风靡了大陆地区，累计销售达到30万盒，HMR 海魅儿的第一次惊艳亮相就赢得了数十万东方女性的由衷信赖，亲身体验到高品质护肤品的神奇魔力。</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;&nbsp;<strong style="padding: 0px; margin: 0px;">这是东方人献给全世界的礼物，也是东方草本对爱美女性的创新贡献，贴心陪伴中国女性的追美历程。</strong></span></p><p><br/></p>', '0', '1', '1', '', '', '2', 'taste.html', 'taste_info.html', 'info.html', '1', '3', '', '74', '361', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('413', '品牌愿景', '', 'cn', '', '', '', '<p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; text-indent: 0em; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-align: center;"><span style="padding: 0px; margin: 0px; color: rgb(255, 192, 0);"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 20px;">品牌愿景</span></strong></span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp; HMR 海魅儿并未停下脚步。这份超越技术的人本精神和虔诚匠心，被融贯于 HMR 海魅儿每一款产品的研发流程之中，一脉相承，生生不息。后续推出的蜗牛面霜、水库新生补水面膜、焕颜精粹水等人气产品，不止带给人们显而易见的美丽蜕变和与众不同的护肤体验，更彰显着HMR海魅儿穷尽中西护肤智慧，全新诠释女性魅力的责任担当。</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;<strong style="padding: 0px; margin: 0px;">&nbsp;未来，品牌将始终秉持初心，为人们带来实至名归的国潮护肤精品。</strong></span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;"><strong style="padding: 0px; margin: 0px;"><br/></strong></span></p>', '0', '1', '1', '', '', '2', 'taste.html', 'taste_info.html', 'info.html', '1', '1', '', '74', '361', '0', 'fa-th-list');
INSERT INTO `6_tp_cate` VALUES ('414', '品牌释义', '', 'cn', '', '', '', '<p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 2em;"><span style="padding: 0px; margin: 0px; color: rgb(255, 192, 0);"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 20px;">品牌释义</span></strong><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 20px;"></span></strong></span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); line-height: 2em;"><span style="padding: 0px; margin: 0px; color: rgb(255, 192, 0);"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 20px;"><br/></span></strong></span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><strong style="padding: 0px; margin: 0px; text-indent: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">HMR海魅儿</span></strong><br data-filtered="filtered" style="padding: 0px; margin: 0px;"/></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;</span></strong><span style="padding: 0px; margin: 0px; font-size: 16px; text-indent: 2em;">“海”即“海洋”般的锁水滋润体验，“魅儿”即东方女性的迷人魅力，团队根植传统本草智慧，糅合前沿美肤科技，倾心呈现高颜值、高亲肤感、高品质的护肤产品，诠释“美法自然”之道，</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px; text-indent: 2em;">&nbsp; &nbsp;为女性带来&nbsp; 温和美肤新享受。&nbsp;</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px; text-indent: 2em;"><br data-filtered="filtered" style="padding: 0px; margin: 0px;"/></span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 16px;">H-Hyaluronic</span></strong></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">旗下第一款产品玻尿酸原液产品，重新定义外用玻尿酸原液锁水功能。</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 16px;">M-Magic</span></strong></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">带给亿万女性的是肌肤的神奇魔法，焕新肌肤，使肌肤更加紧致、光滑、饱满的魔力。</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">&nbsp;</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-size: 16px;">R-Romantic</span></strong></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><span style="padding: 0px; margin: 0px; font-size: 16px;">带给女性至为浪漫和美好的体验。</span></p><p style="padding: 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(51, 51, 51); font-family: 微软雅黑, arial, &quot;Hiragino Sans GB&quot;; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em; line-height: 2em;"><strong style="padding: 0px; margin: 0px;"><span style="padding: 0px; margin: 0px; font-family: 微软雅黑; font-size: 14px;">&nbsp;</span></strong></p><p><br/></p>', '0', '1', '1', '', '', '2', 'taste.html', 'taste_info.html', 'info.html', '1', '2', '', '74', '361', '0', 'fa-th-list');

-- ----------------------------
-- Records for `6_tp_cftype`
-- ----------------------------
INSERT INTO `6_tp_cftype` VALUES ('1', '站点基本信息');
INSERT INTO `6_tp_cftype` VALUES ('3', 'SEO设置');
INSERT INTO `6_tp_cftype` VALUES ('10', '联系信息');

-- ----------------------------
-- Records for `6_tp_conf`
-- ----------------------------
INSERT INTO `6_tp_conf` VALUES ('9', '站点根网址', 'siteurl', '', '', '1', '1', '999', '0');
INSERT INTO `6_tp_conf` VALUES ('10', '静态保存路径', 'path', '', '', '1', '1', '999', '0');
INSERT INTO `6_tp_conf` VALUES ('11', '网站logo', 'logo', '20211110/e2acc0796fa064214029ca5cfd0f21d1.png', '图片大小:317px*122px', '6', '1', '999', '1');
INSERT INTO `6_tp_conf` VALUES ('12', '备案号', 'beian', '京ICP备000000号', '', '1', '1', '0', '1');
INSERT INTO `6_tp_conf` VALUES ('42', '版权', 'copyright', 'Copyright © 2013 海魅儿（北京）生物科技有限公司', '', '1', '1', '999', '1');
INSERT INTO `6_tp_conf` VALUES ('16', '站点名称', 'sitename', 'HMR海魅儿品牌官方网站', '', '1', '3', '99', '1');
INSERT INTO `6_tp_conf` VALUES ('17', '关键词', 'keywords', 'HMR海魅儿官网,水库新生补水面膜,HMR海魅儿素颜约会霜,修护蜗牛霜,焕颜精粹水,金箔眼膜', '', '1', '3', '', '1');
INSERT INTO `6_tp_conf` VALUES ('18', '站点描述', 'desc', '海纳千美，魅力无限。HMR海魅儿以化繁为简的设计尽显国潮风尚，赋予系列产品以鲜明的人文特色和出众的东方意蕴，在触手可及的精致中体味匠心，在优雅意境中感知国潮新意，在令人惊艳的使用效果中焕新美丽，让爱美女性对国产护肤产品充满自信，成为国潮护肤优选品牌。', '', '5', '3', '', '1');
INSERT INTO `6_tp_conf` VALUES ('19', '开启缓存', 'ifcach', '', '是,否', '2', '1', '999', '0');
INSERT INTO `6_tp_conf` VALUES ('20', '关闭站点', 'close', '否', '是,否', '2', '1', '999', '1');
INSERT INTO `6_tp_conf` VALUES ('25', '允许添加水印', 'water', '', '是,否', '2', '1', '999', '0');
INSERT INTO `6_tp_conf` VALUES ('26', '水印位置', 'water_pos', '', '左上角,上居中,右上角,左居中,居中,右居中,左下角,下居中,右下角', '2', '1', '999', '0');
INSERT INTO `6_tp_conf` VALUES ('27', '水印透明度', 'tmd', '', '', '1', '1', '999', '0');
INSERT INTO `6_tp_conf` VALUES ('28', '水印图片', 'water_img', '', '', '6', '1', '999', '0');
INSERT INTO `6_tp_conf` VALUES ('29', '缩略图宽度', 'thumb_width', '', '', '1', '1', '999', '0');
INSERT INTO `6_tp_conf` VALUES ('30', '缩略图高度', 'thumb_height', '', '', '1', '1', '999', '0');
INSERT INTO `6_tp_conf` VALUES ('31', '缩略图裁剪方式', 'thumb_way', '', '等比例缩放,缩放后填充,居中裁剪,左上角裁剪,右下角裁剪,固定尺寸缩放', '2', '1', '999', '0');
INSERT INTO `6_tp_conf` VALUES ('32', '允许上传缩略图', 'thumb', '', '是,否', '2', '1', '999', '0');
INSERT INTO `6_tp_conf` VALUES ('34', '中文模板', 'temp', 'cn', '', '1', '1', '999', '1');
INSERT INTO `6_tp_conf` VALUES ('53', '邮箱/E-mail', 'email', 'info@hmr.hk.cn', '', '1', '10', '999', '1');
INSERT INTO `6_tp_conf` VALUES ('54', '地址/Add', 'address', '北京市朝阳区东坝乡东晓景产业园', '', '1', '10', '999', '1');
INSERT INTO `6_tp_conf` VALUES ('51', '电话/Tel', 'tel', '010-85997113', '', '1', '10', '999', '1');
INSERT INTO `6_tp_conf` VALUES ('52', '传真/Fax', 'fax', '010-85997853', '', '1', '10', '999', '1');
INSERT INTO `6_tp_conf` VALUES ('55', '二维码', 'code', '20211109/800b7e44c2139bc8bc57127f35990788.png', '', '6', '10', '999', '1');
INSERT INTO `6_tp_conf` VALUES ('56', '邮编', 'zip_code', '100', '', '1', '10', '999', '1');
INSERT INTO `6_tp_conf` VALUES ('57', '招聘邮箱', 'hr_mail', 'info@hmr.hk.cn', '', '1', '10', '888', '1');
INSERT INTO `6_tp_conf` VALUES ('58', '抖音', 'dy', '20211110/1518f7b0f5e270778de2492c2a1842d3.jpg', '', '6', '1', '999', '1');

-- ----------------------------
-- Records for `6_tp_media`
-- ----------------------------
INSERT INTO `6_tp_media` VALUES ('163', 'lg_pri_info_01.jpg', '', '20200827/6c9e529b08d9ffc1291b10460878ffc8.jpg', '', 'img', '1598522915', '1598522915');
INSERT INTO `6_tp_media` VALUES ('164', 'lg_pro_01.jpg', '', '20200827/1eb646413e2266ce4a914543dce73696.jpg', '', 'img', '1598522943', '1598522943');
INSERT INTO `6_tp_media` VALUES ('165', 'lg_pro_02.jpg', '', '20200827/18866f7c960253a8da8405cc4ea7ae6d.jpg', '', 'img', '1598522948', '1598522948');
INSERT INTO `6_tp_media` VALUES ('166', 'lg_pro_03.jpg', '', '20200827/090b71a71224c16403eaaaa42bd7fb18.jpg', '', 'img', '1598522953', '1598522953');
INSERT INTO `6_tp_media` VALUES ('167', 'lg_pro_04.jpg', '', '20200827/2c652c5e4a25fd413bfb6a49ae21a3fb.jpg', '', 'img', '1598522957', '1598522957');
INSERT INTO `6_tp_media` VALUES ('168', 'events_001.jpg', '', '20200827/693b21a096e471a10e12092ff36a08f5.jpg', '', 'img', '1598523891', '1598523891');
INSERT INTO `6_tp_media` VALUES ('169', 'events_002.jpg', '', '20200827/6f7ac0dbe0f95280f2e6fb2a33e1032a.jpg', '', 'img', '1598523939', '1598523939');
INSERT INTO `6_tp_media` VALUES ('170', 'events_003.jpg', '', '20200827/ee1c8fd37ef95b1d3e4b0cc5772ae423.jpg', '', 'img', '1598523964', '1598523964');
INSERT INTO `6_tp_media` VALUES ('171', 'lg_pro_banner.jpg', '', '20200828/f6e023a7653f2d06d887a22c28e31d6a.jpg', '产品banner', 'img', '1598600499', '1598600499');
INSERT INTO `6_tp_media` VALUES ('172', 'lg_about_banner.jpg', '', '20200828/994aec0492a2d9751ee5b2de49cef377.jpg', '关于我们banner', 'img', '1598600530', '1598600530');
INSERT INTO `6_tp_media` VALUES ('173', 'lg_news_banner.jpg', '', '20200828/d1bca9e3376de4c771aea3383cb54cf3.jpg', '新闻中心', 'img', '1598600560', '1598600560');
INSERT INTO `6_tp_media` VALUES ('174', 'lg_news2_banner.jpg', '', '20200828/1981d3dbb834908642b5c60bc2d6a7b7.jpg', '党建banner', 'img', '1598600612', '1598600612');
INSERT INTO `6_tp_media` VALUES ('175', 'lg_contact_banner.jpg', '', '20200828/d7ff33afc1ace1622ef901e3520da6c2.jpg', '联系我们banner', 'img', '1598600636', '1598600636');
INSERT INTO `6_tp_media` VALUES ('176', 'lg_news_02.jpg', '', '20200828/8414046fc092769b78bc4a3d46382f17.jpg', '', 'img', '1598603630', '1598603630');
INSERT INTO `6_tp_media` VALUES ('177', 'lg_news_03.jpg', '', '20200828/9be23b70fc9653ee5638f9f4292bc9e5.jpg', '', 'img', '1598603639', '1598603639');
INSERT INTO `6_tp_media` VALUES ('178', 'lg_news_01.jpg', '', '20200828/7701e798986e593cc84a3da1a4134aa8.jpg', '', 'img', '1598603644', '1598603644');
INSERT INTO `6_tp_media` VALUES ('179', 'footer-二维码.jpg', '', '20200828/6035c0a71a4c9543b66f78f3c9712529.jpg', '', 'img', '1598606594', '1598606594');
INSERT INTO `6_tp_media` VALUES ('180', 'pic-01.jpg', '', '20200831/28fa1125b28dbdcb7bf00b2714e3f8b8.jpg', '', 'img', '1598839042', '1598839042');
INSERT INTO `6_tp_media` VALUES ('181', 'pic-02.jpg', '', '20200831/1b826405d3339c5303adaab155b1f4cc.jpg', '', 'img', '1598841373', '1598841373');
INSERT INTO `6_tp_media` VALUES ('182', 'pic-03.jpg', '', '20200831/e42a4cd55bdc96db5e5adaa087dccea6.jpg', '', 'img', '1598841392', '1598841392');
INSERT INTO `6_tp_media` VALUES ('183', 'pic-11.jpg', '', '20200831/f45237b3c361a005dfa611aed0a53432.jpg', '', 'img', '1598841413', '1598841413');
INSERT INTO `6_tp_media` VALUES ('184', 'new-1.jpg', '', '20200831/71023fa2417fa5312208fc5e987d6d21.jpg', '', 'img', '1598856094', '1598856094');
INSERT INTO `6_tp_media` VALUES ('185', 'new-2.jpg', '', '20200831/9f5c6c83a2b05042656ccd2a2ce7c508.jpg', '', 'img', '1598856111', '1598856111');
INSERT INTO `6_tp_media` VALUES ('186', 'new-3.jpg', '', '20200831/7369260aef8104d33562f5768a533235.jpg', '', 'img', '1598856127', '1598856127');
INSERT INTO `6_tp_media` VALUES ('187', 'new-4.jpg', '', '20200831/201f8df956bd5ebcb76ab6775c6c4c1b.jpg', '', 'img', '1598856139', '1598856139');
INSERT INTO `6_tp_media` VALUES ('188', 'lg_pro_01.jpg', '', '20200831/855214b92ffe40bda5c402ff85319c39.jpg', '', 'img', '1598862252', '1598862252');
INSERT INTO `6_tp_media` VALUES ('189', 'lg_pro_02.jpg', '', '20200831/e21758b32856a00f92f8f99e0141a411.jpg', '', 'img', '1598862269', '1598862269');
INSERT INTO `6_tp_media` VALUES ('190', 'lg_pro_03.jpg', '', '20200831/adec50c8a911d8ea5068dbb34697f459.jpg', '', 'img', '1598862281', '1598862281');
INSERT INTO `6_tp_media` VALUES ('191', 'lg_pro_04.jpg', '', '20200831/1975f0ede807cca301a452606983292d.jpg', '', 'img', '1598862298', '1598862298');
INSERT INTO `6_tp_media` VALUES ('192', 'logo.png', '', '20200831/12cd46b7e8a22a75e44db860c5361987.png', '', 'img', '1598867492', '1598867492');
INSERT INTO `6_tp_media` VALUES ('194', '5.png', '', '20200911/69f02a29b4e0c7613822dd53d5c18035.png', '', 'img', '1599790659', '1599790659');
INSERT INTO `6_tp_media` VALUES ('195', '2.png', '', '20200911/fdafaf6e2e1228058cb686c683efb950.png', '', 'img', '1599790700', '1599790700');
INSERT INTO `6_tp_media` VALUES ('196', '3.png', '', '20200911/f1ba1f4688666fdbafddae72de84435c.png', '', 'img', '1599790733', '1599790733');
INSERT INTO `6_tp_media` VALUES ('197', '1.png', '', '20200911/dd70561f7776e28fa6b0d5e1485f39e6.png', '', 'img', '1599790780', '1599790780');
INSERT INTO `6_tp_media` VALUES ('199', '4.png', '', '20200911/d14a9694bbf25d6430e173b940f30b2e.png', '', 'img', '1599790819', '1599790819');
INSERT INTO `6_tp_media` VALUES ('200', '6.png', '', '20200911/709b9f826f6ddf872d698311b6e0a37f.png', '', 'img', '1599790830', '1599790830');
INSERT INTO `6_tp_media` VALUES ('201', '2020091208330728728.jpg', '', '20200918/db8d0ef6a0abd236342abe695fcc7642.jpg', '', 'img', '1600398524', '1600398524');
INSERT INTO `6_tp_media` VALUES ('202', '超级陈酿.jpg', '', '20201021/e16ee97e0a144db71495da86a8b5f7ce.jpg', '', 'img', '1603289598', '1603289598');
INSERT INTO `6_tp_media` VALUES ('203', '卓越干化.png', '', '20201022/e1963442f8929b0c7c5686e7f0c027b7.png', '', 'img', '1603377379', '1603377379');
INSERT INTO `6_tp_media` VALUES ('204', '2009干化.png', '', '20201022/789ef357b425333791a7fe81e7926819.png', '', 'img', '1603377439', '1603377439');
INSERT INTO `6_tp_media` VALUES ('205', '2010干化.png', '', '20201022/61d195661f440c72e97828aef7b48ba8.png', '', 'img', '1603377471', '1603377471');
INSERT INTO `6_tp_media` VALUES ('206', '七年藏酿品.png', '', '20201022/ae790144b54d3ce10e8e61f8dabceedf.png', '', 'img', '1603377588', '1603377588');
INSERT INTO `6_tp_media` VALUES ('207', '七年藏献礼版.png', '', '20201022/57309712daa2881a501908e51023cdbe.png', '', 'img', '1603377627', '1603377627');
INSERT INTO `6_tp_media` VALUES ('208', '经典干红.png', '', '20201022/ba8b7d7290be0e65c4a4f9fa7c746bae.png', '', 'img', '1603377690', '1603377690');
INSERT INTO `6_tp_media` VALUES ('209', '老干红.png', '', '20201022/c87615cea6226f29ef5a702c77d3f3e1.png', '', 'img', '1603377751', '1603377751');
INSERT INTO `6_tp_media` VALUES ('211', '老干白.png', '', '20201022/b07350ba57200bb90778abe98c1a9978.png', '', 'img', '1603377858', '1603377858');
INSERT INTO `6_tp_media` VALUES ('240', 'VCG211254660438.jpg', '', '20201109/a6b547993513eebacf32fb6753cba278.jpg', '', 'img', '1604909847', '1604909847');
INSERT INTO `6_tp_media` VALUES ('241', 'VCG211183700965.jpg', '', '20201109/ae996274b7a4636542e8c41d0f0cae78.jpg', '', 'img', '1604909955', '1604909955');
INSERT INTO `6_tp_media` VALUES ('239', 'VCG211246386517.jpg', '', '20201109/4aba38bc32d2b6803055bf8e050f7035.jpg', '', 'img', '1604909820', '1604909820');
INSERT INTO `6_tp_media` VALUES ('238', 'VCG211183700965.jpg', '', '20201109/2645089951663f3cf43952596ccadcb4.jpg', '', 'img', '1604909755', '1604909755');
INSERT INTO `6_tp_media` VALUES ('243', 'VCG41592425567.jpg', '', '20201109/95f0e447aab19ecab279d49fa8a8f407.jpg', '', 'img', '1604910983', '1604910983');
INSERT INTO `6_tp_media` VALUES ('244', 'VCG211183700965.jpg', '', '20201109/54c1766c04ca8d5077544520b5afe76b.jpg', '', 'img', '1604911238', '1604911238');
INSERT INTO `6_tp_media` VALUES ('245', 'VCG211246386517.jpg', '', '20201109/8133e3dbe678a656f1c7a8b0e1269a99.jpg', '', 'img', '1604911290', '1604911290');
INSERT INTO `6_tp_media` VALUES ('249', '历史背景.jpg', '', '20201109/36abc573840a764bced2e26821c0fe4d.jpg', '', 'img', '1604912413', '1604912413');
INSERT INTO `6_tp_media` VALUES ('250', '未标题-15.jpg', '', '20201109/cc1117bbb2d844fc8aa93a7b9756cee3.jpg', '', 'img', '1604912430', '1604912430');
INSERT INTO `6_tp_media` VALUES ('237', 'VCG41592425567.jpg', '', '20201109/209052e152c08c193c75edb90b934154.jpg', '', 'img', '1604909546', '1604909546');
INSERT INTO `6_tp_media` VALUES ('231', '10干化主图.png', '', '20201029/e95af42d705f80188b291f64aafe8003.png', '', 'img', '1603982553', '1603982553');
INSERT INTO `6_tp_media` VALUES ('251', '历史背景.jpg', '', '20201109/c16135eab96b6d44c4e741efc8bd4c04.jpg', '', 'img', '1604912513', '1604912513');
INSERT INTO `6_tp_media` VALUES ('242', 'VCG211246386517.jpg', '', '20201109/d5c3be3b737056d4b4cc5d96a36e04a8.jpg', '', 'img', '1604909971', '1604909971');
INSERT INTO `6_tp_media` VALUES ('247', '未标题-10.jpg', '', '20201109/054140817c9c9429e4031e110f259a2d.jpg', '', 'img', '1604911761', '1604911761');
INSERT INTO `6_tp_media` VALUES ('248', '未标题-15.jpg', '', '20201109/12b367b1e9d0d0d9d0f3d622e38bd27b.jpg', '', 'img', '1604911779', '1604911779');
INSERT INTO `6_tp_media` VALUES ('246', 'VCG211254660438.jpg', '', '20201109/ab81cb610672a90157af6c3825ebee47.jpg', '', 'img', '1604911330', '1604911330');
INSERT INTO `6_tp_media` VALUES ('252', '01.jpg', '', '20201111/0b5b47b1fb9e11bcbd74a7452299e120.jpg', '', 'img', '1605063223', '1605063223');
INSERT INTO `6_tp_media` VALUES ('253', '02.jpg', '', '20201111/e7b0b5e8ede4a9a3aa605817fb4abe40.jpg', '', 'img', '1605063230', '1605063230');
INSERT INTO `6_tp_media` VALUES ('254', '03.jpg', '', '20201111/729cc91fa4a02958fdde2ef1b9e44a57.jpg', '', 'img', '1605063255', '1605063255');
INSERT INTO `6_tp_media` VALUES ('255', '04.jpg', '', '20201111/5686e16d467c73f152a899cc3c4a6d00.jpg', '', 'img', '1605063264', '1605063264');
INSERT INTO `6_tp_media` VALUES ('256', '06.jpg', '', '20201111/936dbe5575eb909cc3abce5f49a20f48.jpg', '', 'img', '1605064169', '1605064169');
INSERT INTO `6_tp_media` VALUES ('257', '07.jpg', '', '20201111/a261d4a5a85095d155ab4ca5d5245768.jpg', '', 'img', '1605064326', '1605064326');
INSERT INTO `6_tp_media` VALUES ('258', '08.jpg', '', '20201111/510a49b40e7f372bd0137bec17106e5a.jpg', '', 'img', '1605064356', '1605064356');
INSERT INTO `6_tp_media` VALUES ('259', '05.jpg', '', '20201111/a0582baed48ff00098cb3b20e07b19fb.jpg', '', 'img', '1605064366', '1605064366');
INSERT INTO `6_tp_media` VALUES ('260', '未标题-3.png', '', '20201111/b5416ee1e714d8bede77718595c7e9d7.png', '', 'img', '1605066888', '1605066888');
INSERT INTO `6_tp_media` VALUES ('261', '二维码.jpg', '', '20201111/26e08d03f0e97f9cdb011d809ce841fb.jpg', '', 'img', '1605066963', '1605066963');
INSERT INTO `6_tp_media` VALUES ('262', 'HAYMAR-LOGO.png', '', '20211104/c6bc202924ffb500e477b1a13c466a4e.png', '', 'img', '1636018439', '1636018439');
INSERT INTO `6_tp_media` VALUES ('263', 'logo.png', '', '20211104/29d05e5c6d865b549efcd55ac7572889.png', '', 'img', '1636018550', '1636018550');
INSERT INTO `6_tp_media` VALUES ('264', 'logo1.png', '', '20211104/94322d612fa210718f12839c11e3c752.png', '', 'img', '1636018652', '1636018652');
INSERT INTO `6_tp_media` VALUES ('265', '2.jpg', '', '20211104/7e4d2eb8c81aa9441698d0652453b9ca.jpg', '', 'img', '1636019274', '1636019274');
INSERT INTO `6_tp_media` VALUES ('266', '1.jpg', '', '20211104/9fbc026730d634566b3530fc314a7811.jpg', '', 'img', '1636019295', '1636019295');
INSERT INTO `6_tp_media` VALUES ('267', '4.jpg', '', '20211104/357147f8bc6f1863b46a53ff030b6b58.jpg', '', 'img', '1636019306', '1636019306');
INSERT INTO `6_tp_media` VALUES ('268', '5.jpg', '', '20211104/1670a50e1b0bb7b4e8ed4bb4b9280943.jpg', '', 'img', '1636019315', '1636019315');
INSERT INTO `6_tp_media` VALUES ('269', 'bn1.jpg', '', '20211104/496576f689607dbc4157d5984d17b338.jpg', '', 'img', '1636020368', '1636020368');
INSERT INTO `6_tp_media` VALUES ('270', 'bn2.jpg', '', '20211104/cd7591843872aa90ee2074ebc7a4516e.jpg', '', 'img', '1636021278', '1636021278');
INSERT INTO `6_tp_media` VALUES ('271', '2345_image_file_copy_2.jpg', '', '20211108/2bea19f21d2c2e46da5504ae99430133.jpg', '', 'img', '1636357541', '1636357541');
INSERT INTO `6_tp_media` VALUES ('272', '2345_image_file_copy_3.jpg', '', '20211108/b308ebf31575bcafebfb4aae3c46eb4b.jpg', '', 'img', '1636357965', '1636357965');
INSERT INTO `6_tp_media` VALUES ('273', '2345_image_file_copy_4.jpg', '', '20211108/176927dbdcf1dc67d733b93d316fba14.jpg', '', 'img', '1636357976', '1636357976');
INSERT INTO `6_tp_media` VALUES ('274', '2345_image_file_copy_5.jpg', '', '20211108/aa166fe04076973553ea42c92adc9919.jpg', '', 'img', '1636357988', '1636357988');
INSERT INTO `6_tp_media` VALUES ('275', '2345_image_file_copy_17.jpg', 'HMR海魅儿约会霜', '20211108/21e70d08094bc4bc4f3778caeb2d0bbd.jpg', 'HMR海魅儿约会霜', 'img', '1636359382', '1636359382');
INSERT INTO `6_tp_media` VALUES ('276', '2345_image_file_copy_18.jpg', '', '20211108/0f3432b236e878f3f0abc83f56b3c694.jpg', '', 'img', '1636359407', '1636359407');
INSERT INTO `6_tp_media` VALUES ('277', '2345_image_file_copy_19.jpg', 'HMR海魅儿约会霜', '20211108/b1a90500d33e0bf9b57570a04f5418ef.jpg', 'HMR海魅儿约会霜', 'img', '1636359413', '1636359413');
INSERT INTO `6_tp_media` VALUES ('278', '2345_image_file_copy_20.jpg', 'HMR海魅儿约会霜', '20211108/0974e2910ef4c6e3bb0b034f72be60fd.jpg', 'HMR海魅儿约会霜', 'img', '1636359418', '1636359418');
INSERT INTO `6_tp_media` VALUES ('279', '2345_image_file_copy_31.jpg', 'HMR海魅儿人参蜗牛霜', '20211108/3056d31cc53e88542d7399782e99bd8e.jpg', 'HMR海魅儿人参蜗牛霜', 'img', '1636361350', '1636361350');
INSERT INTO `6_tp_media` VALUES ('280', '2345_image_file_copy_33.jpg', 'HMR海魅儿人参蜗牛霜', '20211108/fcb74b966949347789623ab5f35a3525.jpg', 'HMR海魅儿人参蜗牛霜', 'img', '1636361355', '1636361355');
INSERT INTO `6_tp_media` VALUES ('281', '2345_image_file_copy_32.jpg', 'HMR海魅儿人参蜗牛霜', '20211108/9139a723099e2a462db7fdc683c0de84.jpg', 'HMR海魅儿人参蜗牛霜', 'img', '1636361361', '1636361361');
INSERT INTO `6_tp_media` VALUES ('282', '2345_image_file_copy_34.jpg', 'HMR海魅儿人参蜗牛霜', '20211108/4a9864102a4cd95052544b8465f1c584.jpg', 'HMR海魅儿人参蜗牛霜', 'img', '1636361367', '1636361367');
INSERT INTO `6_tp_media` VALUES ('283', '2345_image_file_copy_35.jpg', 'HMR海魅儿人参蜗牛霜', '20211108/34fc34a39d99446d6a552a15992583f6.jpg', 'HMR海魅儿人参蜗牛霜', 'img', '1636361372', '1636361372');
INSERT INTO `6_tp_media` VALUES ('284', '2345_image_file_copy_38.jpg', '', '20211108/74048f97e366436da2f3fffdb1e4d368.jpg', '', 'img', '1636361820', '1636361820');
INSERT INTO `6_tp_media` VALUES ('285', '2345_image_file_copy_39.jpg', '', '20211108/23bc423d1d249cb140d44eb676659168.jpg', '', 'img', '1636361824', '1636361824');
INSERT INTO `6_tp_media` VALUES ('286', '2345_image_file_copy_40.jpg', '', '20211108/c70dfac906033f4baadb85de94f68579.jpg', '', 'img', '1636361830', '1636361830');
INSERT INTO `6_tp_media` VALUES ('287', '2345_image_file_copy_41.jpg', '', '20211108/4388f8a3c5dd4b40e5e61a17f1e87dfc.jpg', '', 'img', '1636361835', '1636361835');
INSERT INTO `6_tp_media` VALUES ('288', '2345_image_file_copy_42.jpg', '', '20211108/43b4525110e6c7d9048b69df36e78114.jpg', '', 'img', '1636361839', '1636361839');
INSERT INTO `6_tp_media` VALUES ('289', '企业微信截图_16363681557.png', '', '20211108/224c83031a6f19eb079ce4b2971a8983.png', '', 'img', '1636368221', '1636368221');
INSERT INTO `6_tp_media` VALUES ('290', 'logo1.png', '', '20211109/678eec3197138d90a00f44fa5823454f.png', '', 'img', '1636447839', '1636447839');
INSERT INTO `6_tp_media` VALUES ('291', '企业微信截图_1636448008457.png', '', '20211109/800b7e44c2139bc8bc57127f35990788.png', '', 'img', '1636448034', '1636448034');
INSERT INTO `6_tp_media` VALUES ('292', 'dsj.jpg', '', '20211109/826c58e901325b8d9df44dfe80811c38.jpg', '', 'img', '1636453216', '1636453216');
INSERT INTO `6_tp_media` VALUES ('293', 'dsj.jpg', '', '20211109/ac26bb06b9106b8ee0bedb5664a4ea5b.jpg', '', 'img', '1636453379', '1636453379');
INSERT INTO `6_tp_media` VALUES ('294', 'dsj.jpg', '', '20211109/8700066d530d17cdc35a0394c778cc5b.jpg', '', 'img', '1636453444', '1636453444');
INSERT INTO `6_tp_media` VALUES ('295', 'syfk.jpg', '', '20211110/1cccb9c52b4d38b51f81918e14e16f6c.jpg', '', 'img', '1636510663', '1636510663');
INSERT INTO `6_tp_media` VALUES ('296', 'syfk.jpg', '', '20211110/025199a7fdd8f4fd981df8fe1b6328ea.jpg', '', 'img', '1636510718', '1636510718');
INSERT INTO `6_tp_media` VALUES ('297', 'logo1.png', '', '20211110/e2acc0796fa064214029ca5cfd0f21d1.png', '', 'img', '1636515991', '1636515991');
INSERT INTO `6_tp_media` VALUES ('298', 'ads.jpg', '', '20211110/1518f7b0f5e270778de2492c2a1842d3.jpg', '', 'img', '1636538512', '1636538512');
INSERT INTO `6_tp_media` VALUES ('299', '主图2.jpg', 'HMR海魅儿约会霜', '20211112/01da061f7fe0084211dd6d8443fe6545.jpg', 'HMR海魅儿约会霜', 'img', '1636686966', '1636686966');
INSERT INTO `6_tp_media` VALUES ('300', '主图2.jpg', 'HMR海魅儿补水面膜', '20211112/815bbd5abaeafdae62efb8c872c6adbf.jpg', 'HMR海魅儿补水面膜', 'img', '1636689351', '1636689351');
INSERT INTO `6_tp_media` VALUES ('301', '白底2.jpg', 'HMR海魅儿补水面膜', '20211112/b3a26274cb6c0231f9188877d7541058.jpg', 'HMR海魅儿补水面膜', 'img', '1636697068', '1636697068');
INSERT INTO `6_tp_media` VALUES ('302', '白底3.jpg', 'HMR海魅儿补水面膜', '20211112/7a5ec4fde494fb438650de24d43afe0b.jpg', 'HMR海魅儿补水面膜', 'img', '1636697117', '1636697117');
INSERT INTO `6_tp_media` VALUES ('303', '成分.jpg', '', '20211112/b55222dfd786cb8a00782bb278120541.jpg', '', 'img', '1636697757', '1636697757');
INSERT INTO `6_tp_media` VALUES ('304', '膜布.jpg', 'HMR海魅儿补水面膜', '20211112/cb521bc347808e61d75abb521203bf4d.jpg', 'HMR海魅儿补水面膜', 'img', '1636697781', '1636697781');
INSERT INTO `6_tp_media` VALUES ('305', '主图.jpg', 'HMR海魅儿补水面膜', '20211112/144b6f0ef5aa477f9075d2c391dd3f1a.jpg', 'HMR海魅儿补水面膜', 'img', '1636697832', '1636697832');
INSERT INTO `6_tp_media` VALUES ('306', '面膜产品-官网.jpg', '', '20211112/9b0117ae569fe734ae4ea9e8e58d41b2.jpg', '', 'img', '1636702520', '1636702520');
INSERT INTO `6_tp_media` VALUES ('307', '面霜产品-官网.jpg', 'HMR海魅儿人参蜗牛霜', '20211112/f43f874f2d0dda5245ce394e5aee6ce6.jpg', 'HMR海魅儿人参蜗牛霜', 'img', '1636702547', '1636702547');
INSERT INTO `6_tp_media` VALUES ('308', '精粹水产品-官网.jpg', '', '20211112/6dbce34c8156335f66f78ab26d49322e.jpg', '', 'img', '1636702602', '1636702602');

-- ----------------------------
-- Records for `6_tp_message`
-- ----------------------------
INSERT INTO `6_tp_message` VALUES ('15', '395968009@qq.com', '15711365209', '分类一', '', 'dwqdwqdqwdwq', '1598606384', '127.0.0.1');
INSERT INTO `6_tp_message` VALUES ('18', '1400034118@qq.com', '15087534468', '荣誉称号', '', '111', '1606295308', '124.200.176.197');
INSERT INTO `6_tp_message` VALUES ('19', '1400034118@qq.com', '15087533465', '荣誉称号', '', 'qw', '1636523829', '124.200.176.197');
INSERT INTO `6_tp_message` VALUES ('20', 'bjtb@shougege.net', '15224562563', '佛挡杀佛的', '', '福鼎市胜多负少打发斯蒂芬', '1636593314', '123.120.188.39');

-- ----------------------------
-- Records for `6_tp_model`
-- ----------------------------
INSERT INTO `6_tp_model` VALUES ('73', '产品模块', 'product', '1', '["2","3"]', '{"2":"\u53d1\u5e03\u65f6\u95f4","5":"\u5185\u5bb9","6":"\u5c01\u9762\u56fe(\u5c3a\u5bf8:380*355px)","8":"\u8d2d\u4e70\u94fe\u63a5"}');
INSERT INTO `6_tp_model` VALUES ('74', '公司概况', 'about', '1', '["2"]', '{"2":"\u53d1\u5e03\u65f6\u95f4","5":"\u5185\u5bb9"}');
INSERT INTO `6_tp_model` VALUES ('75', '发展历程', 'history', '1', '', '{"2":"\u53d1\u5e03\u65f6\u95f4","4":"\u63cf\u8ff0","6":"\u56fe\u7247(\u5c3a\u5bf8:216*320px)"}');
INSERT INTO `6_tp_model` VALUES ('76', '新闻', 'news', '1', '', '{"2":"\u53d1\u5e03\u65f6\u95f4","5":"\u5185\u5bb9","6":"\u7f6e\u9876\u56fe\u7247(\u5c3a\u5bf8:380*210px)"}');
INSERT INTO `6_tp_model` VALUES ('77', '联系我们', 'contact', '1', '["2","5"]', '{"3":"\u85aa\u8d44","5":"\u5185\u5bb9","7":"\u4eba\u6570","8":"\u5730\u70b9"}');
INSERT INTO `6_tp_model` VALUES ('78', '友情链接', 'links', '1', '', '{"8":"\u94fe\u63a5"}');
INSERT INTO `6_tp_model` VALUES ('79', '营销网络', 'ys', '1', '', '{"5":"\u5185\u5bb9"}');

-- ----------------------------
-- Records for `6_tp_operation_log`
-- ----------------------------
INSERT INTO `6_tp_operation_log` VALUES ('1959', 'admin', '2', '登录成功！', '124.200.176.197', '1605062566');
INSERT INTO `6_tp_operation_log` VALUES ('1960', 'admin', '2', '删除广告ID108成功！', '124.200.176.197', '1605062606');
INSERT INTO `6_tp_operation_log` VALUES ('1961', 'admin', '2', '删除广告ID107成功！', '124.200.176.197', '1605062607');
INSERT INTO `6_tp_operation_log` VALUES ('1962', 'admin', '2', '删除广告ID110成功！', '124.200.176.197', '1605062609');
INSERT INTO `6_tp_operation_log` VALUES ('1963', 'admin', '2', '编辑广告ID39成功！', '124.200.176.197', '1605062611');
INSERT INTO `6_tp_operation_log` VALUES ('1964', 'admin', '2', '删除成功！', '124.200.176.197', '1605063161');
INSERT INTO `6_tp_operation_log` VALUES ('1965', 'admin', '2', '配置项ID441删除成功！', '124.200.176.197', '1605063167');
INSERT INTO `6_tp_operation_log` VALUES ('1966', 'admin', '2', '配置项ID439删除成功！', '124.200.176.197', '1605063172');
INSERT INTO `6_tp_operation_log` VALUES ('1967', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605063177');
INSERT INTO `6_tp_operation_log` VALUES ('1968', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605063179');
INSERT INTO `6_tp_operation_log` VALUES ('1969', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605063181');
INSERT INTO `6_tp_operation_log` VALUES ('1970', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605063372');
INSERT INTO `6_tp_operation_log` VALUES ('1971', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605063412');
INSERT INTO `6_tp_operation_log` VALUES ('1972', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605063438');
INSERT INTO `6_tp_operation_log` VALUES ('1973', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605063491');
INSERT INTO `6_tp_operation_log` VALUES ('1974', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605063510');
INSERT INTO `6_tp_operation_log` VALUES ('1975', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605063523');
INSERT INTO `6_tp_operation_log` VALUES ('1976', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605063533');
INSERT INTO `6_tp_operation_log` VALUES ('1977', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605063544');
INSERT INTO `6_tp_operation_log` VALUES ('1978', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605063577');
INSERT INTO `6_tp_operation_log` VALUES ('1979', 'admin', '2', '文章ID456添加成功！', '124.200.176.197', '1605063633');
INSERT INTO `6_tp_operation_log` VALUES ('1980', 'admin', '2', '内容ID为456关闭成功！', '124.200.176.197', '1605063654');
INSERT INTO `6_tp_operation_log` VALUES ('1981', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605063687');
INSERT INTO `6_tp_operation_log` VALUES ('1982', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605064176');
INSERT INTO `6_tp_operation_log` VALUES ('1983', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605064216');
INSERT INTO `6_tp_operation_log` VALUES ('1984', 'admin', '2', '文章ID457添加成功！', '124.200.176.197', '1605064336');
INSERT INTO `6_tp_operation_log` VALUES ('1985', 'admin', '2', '文章ID458添加成功！', '124.200.176.197', '1605064371');
INSERT INTO `6_tp_operation_log` VALUES ('1986', 'admin', '2', '内容ID为457关闭成功！', '124.200.176.197', '1605064374');
INSERT INTO `6_tp_operation_log` VALUES ('1987', 'admin', '2', '内容ID为458关闭成功！', '124.200.176.197', '1605064375');
INSERT INTO `6_tp_operation_log` VALUES ('1988', 'admin', '2', '文章ID459添加成功！', '124.200.176.197', '1605064391');
INSERT INTO `6_tp_operation_log` VALUES ('1989', 'admin', '2', '内容ID为458开启成功！', '124.200.176.197', '1605064964');
INSERT INTO `6_tp_operation_log` VALUES ('1990', 'admin', '2', '内容ID为457开启成功！', '124.200.176.197', '1605064965');
INSERT INTO `6_tp_operation_log` VALUES ('1991', 'admin', '2', '内容ID为456开启成功！', '124.200.176.197', '1605064965');
INSERT INTO `6_tp_operation_log` VALUES ('1992', 'admin', '2', '删除成功！', '124.200.176.197', '1605065331');
INSERT INTO `6_tp_operation_log` VALUES ('1993', 'admin', '2', '删除成功！', '124.200.176.197', '1605065341');
INSERT INTO `6_tp_operation_log` VALUES ('1994', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605065346');
INSERT INTO `6_tp_operation_log` VALUES ('1995', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605065348');
INSERT INTO `6_tp_operation_log` VALUES ('1996', 'admin', '2', '删除成功！', '124.200.176.197', '1605065414');
INSERT INTO `6_tp_operation_log` VALUES ('1997', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605065423');
INSERT INTO `6_tp_operation_log` VALUES ('1998', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605065424');
INSERT INTO `6_tp_operation_log` VALUES ('1999', 'admin', '2', '删除成功！', '124.200.176.197', '1605065446');
INSERT INTO `6_tp_operation_log` VALUES ('2000', 'admin', '2', '配置项ID426删除成功！', '124.200.176.197', '1605065491');
INSERT INTO `6_tp_operation_log` VALUES ('2001', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605065497');
INSERT INTO `6_tp_operation_log` VALUES ('2002', 'admin', '2', '修改配置成功', '124.200.176.197', '1605066916');
INSERT INTO `6_tp_operation_log` VALUES ('2003', 'admin', '2', '修改配置成功', '124.200.176.197', '1605066965');
INSERT INTO `6_tp_operation_log` VALUES ('2004', 'admin', '2', '修改配置成功', '124.200.176.197', '1605073414');
INSERT INTO `6_tp_operation_log` VALUES ('2005', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605074561');
INSERT INTO `6_tp_operation_log` VALUES ('2006', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605074572');
INSERT INTO `6_tp_operation_log` VALUES ('2007', 'admin', '2', '删除成功！', '124.200.176.197', '1605074589');
INSERT INTO `6_tp_operation_log` VALUES ('2008', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1605074619');
INSERT INTO `6_tp_operation_log` VALUES ('2009', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1605074881');
INSERT INTO `6_tp_operation_log` VALUES ('2010', 'admin', '2', '配置项ID447删除成功！', '124.200.176.197', '1605074906');
INSERT INTO `6_tp_operation_log` VALUES ('2011', 'admin', '2', '删除成功！', '124.200.176.197', '1605074911');
INSERT INTO `6_tp_operation_log` VALUES ('2012', 'admin', '2', '删除成功！', '124.200.176.197', '1605074917');
INSERT INTO `6_tp_operation_log` VALUES ('2013', 'admin', '2', '内容ID为459关闭成功！', '124.200.176.197', '1606295428');
INSERT INTO `6_tp_operation_log` VALUES ('2014', 'admin', '2', '内容ID为459开启成功！', '124.200.176.197', '1606295428');
INSERT INTO `6_tp_operation_log` VALUES ('2015', 'admin', '2', '文章ID460添加成功！', '124.200.176.197', '1606295488');
INSERT INTO `6_tp_operation_log` VALUES ('2016', 'admin', '2', '文章ID461添加成功！', '124.200.176.197', '1606295490');
INSERT INTO `6_tp_operation_log` VALUES ('2017', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295538');
INSERT INTO `6_tp_operation_log` VALUES ('2018', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295562');
INSERT INTO `6_tp_operation_log` VALUES ('2019', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295601');
INSERT INTO `6_tp_operation_log` VALUES ('2020', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295635');
INSERT INTO `6_tp_operation_log` VALUES ('2021', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295659');
INSERT INTO `6_tp_operation_log` VALUES ('2022', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295849');
INSERT INTO `6_tp_operation_log` VALUES ('2023', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295869');
INSERT INTO `6_tp_operation_log` VALUES ('2024', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295878');
INSERT INTO `6_tp_operation_log` VALUES ('2025', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295902');
INSERT INTO `6_tp_operation_log` VALUES ('2026', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295925');
INSERT INTO `6_tp_operation_log` VALUES ('2027', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295939');
INSERT INTO `6_tp_operation_log` VALUES ('2028', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1606295948');
INSERT INTO `6_tp_operation_log` VALUES ('2029', 'admin', '2', '登录成功！', '124.200.176.197', '1607585566');
INSERT INTO `6_tp_operation_log` VALUES ('2030', 'admin', '2', '栏目ID为400添加成功！', '124.200.176.197', '1607585588');
INSERT INTO `6_tp_operation_log` VALUES ('2031', 'admin', '2', '文章ID462添加成功！', '124.200.176.197', '1607585683');
INSERT INTO `6_tp_operation_log` VALUES ('2032', 'kbmanager', '1', '登录成功！', '124.200.176.197', '1635995783');
INSERT INTO `6_tp_operation_log` VALUES ('2033', 'kbmanager', '1', '用户组ID为2权限分配成功！', '124.200.176.197', '1635995814');
INSERT INTO `6_tp_operation_log` VALUES ('2034', 'kbmanager', '1', '规则ID为26编辑成功！', '124.200.176.197', '1635995828');
INSERT INTO `6_tp_operation_log` VALUES ('2035', 'kbmanager', '1', '修改管理员ID4成功！', '124.200.176.197', '1636000234');
INSERT INTO `6_tp_operation_log` VALUES ('2036', 'kbmanager', '1', '退出成功！', '124.200.176.197', '1636000246');
INSERT INTO `6_tp_operation_log` VALUES ('2037', 'admin', '2', '登录成功！', '124.200.176.197', '1636004014');
INSERT INTO `6_tp_operation_log` VALUES ('2038', 'admin', '2', '删除广告ID109成功！', '124.200.176.197', '1636017415');
INSERT INTO `6_tp_operation_log` VALUES ('2039', 'admin', '2', '删除广告ID111成功！', '124.200.176.197', '1636017417');
INSERT INTO `6_tp_operation_log` VALUES ('2040', 'admin', '2', '编辑广告ID39成功！', '124.200.176.197', '1636017444');
INSERT INTO `6_tp_operation_log` VALUES ('2041', 'admin', '2', '删除广告ID112成功！', '124.200.176.197', '1636018016');
INSERT INTO `6_tp_operation_log` VALUES ('2042', 'admin', '2', '编辑广告ID39成功！', '124.200.176.197', '1636018027');
INSERT INTO `6_tp_operation_log` VALUES ('2043', 'admin', '2', '编辑广告ID39成功！', '124.200.176.197', '1636018261');
INSERT INTO `6_tp_operation_log` VALUES ('2044', 'admin', '2', '修改配置成功', '124.200.176.197', '1636018446');
INSERT INTO `6_tp_operation_log` VALUES ('2045', 'admin', '2', '修改配置成功', '124.200.176.197', '1636018553');
INSERT INTO `6_tp_operation_log` VALUES ('2046', 'admin', '2', '修改配置成功', '124.200.176.197', '1636018657');
INSERT INTO `6_tp_operation_log` VALUES ('2047', 'admin', '2', '登录成功！', '124.200.176.197', '1636074683');
INSERT INTO `6_tp_operation_log` VALUES ('2048', 'admin', '2', '文章ID463添加成功！', '124.200.176.197', '1636104447');
INSERT INTO `6_tp_operation_log` VALUES ('2049', 'admin', '2', '配置项ID463删除成功！', '124.200.176.197', '1636104460');
INSERT INTO `6_tp_operation_log` VALUES ('2050', 'admin', '2', '栏目ID为378开启成功！', '124.200.176.197', '1636104464');
INSERT INTO `6_tp_operation_log` VALUES ('2051', 'admin', '2', '栏目ID为401添加成功！', '124.200.176.197', '1636104475');
INSERT INTO `6_tp_operation_log` VALUES ('2052', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636104973');
INSERT INTO `6_tp_operation_log` VALUES ('2053', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636105017');
INSERT INTO `6_tp_operation_log` VALUES ('2054', 'admin', '2', '文章ID464添加成功！', '124.200.176.197', '1636105077');
INSERT INTO `6_tp_operation_log` VALUES ('2055', 'admin', '2', '文章ID465添加成功！', '124.200.176.197', '1636105155');
INSERT INTO `6_tp_operation_log` VALUES ('2056', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636105177');
INSERT INTO `6_tp_operation_log` VALUES ('2057', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636105190');
INSERT INTO `6_tp_operation_log` VALUES ('2058', 'admin', '2', '文章ID466添加成功！', '124.200.176.197', '1636105239');
INSERT INTO `6_tp_operation_log` VALUES ('2059', 'admin', '2', '文章ID467添加成功！', '124.200.176.197', '1636105292');
INSERT INTO `6_tp_operation_log` VALUES ('2060', 'admin', '2', '文章ID468添加成功！', '124.200.176.197', '1636105336');
INSERT INTO `6_tp_operation_log` VALUES ('2061', 'admin', '2', '文章ID469添加成功！', '124.200.176.197', '1636105394');
INSERT INTO `6_tp_operation_log` VALUES ('2062', 'admin', '2', '文章ID470添加成功！', '124.200.176.197', '1636105466');
INSERT INTO `6_tp_operation_log` VALUES ('2063', 'admin', '2', '文章ID471添加成功！', '124.200.176.197', '1636105513');
INSERT INTO `6_tp_operation_log` VALUES ('2064', 'admin', '2', '登录成功！', '124.200.176.197', '1636334451');
INSERT INTO `6_tp_operation_log` VALUES ('2065', 'admin', '2', '删除成功！', '124.200.176.197', '1636357385');
INSERT INTO `6_tp_operation_log` VALUES ('2066', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636357551');
INSERT INTO `6_tp_operation_log` VALUES ('2067', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636357601');
INSERT INTO `6_tp_operation_log` VALUES ('2068', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636357611');
INSERT INTO `6_tp_operation_log` VALUES ('2069', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636357884');
INSERT INTO `6_tp_operation_log` VALUES ('2070', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636358016');
INSERT INTO `6_tp_operation_log` VALUES ('2071', 'admin', '2', '修改配置成功', '124.200.176.197', '1636358385');
INSERT INTO `6_tp_operation_log` VALUES ('2072', 'admin', '2', '修改配置成功', '124.200.176.197', '1636358505');
INSERT INTO `6_tp_operation_log` VALUES ('2073', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636358582');
INSERT INTO `6_tp_operation_log` VALUES ('2074', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636358601');
INSERT INTO `6_tp_operation_log` VALUES ('2075', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636358618');
INSERT INTO `6_tp_operation_log` VALUES ('2076', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636358793');
INSERT INTO `6_tp_operation_log` VALUES ('2077', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636358857');
INSERT INTO `6_tp_operation_log` VALUES ('2078', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636358956');
INSERT INTO `6_tp_operation_log` VALUES ('2079', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636359127');
INSERT INTO `6_tp_operation_log` VALUES ('2080', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636359160');
INSERT INTO `6_tp_operation_log` VALUES ('2081', 'admin', '2', '文章ID472添加成功！', '124.200.176.197', '1636359513');
INSERT INTO `6_tp_operation_log` VALUES ('2082', 'admin', '2', '文章ID473添加成功！', '124.200.176.197', '1636359513');
INSERT INTO `6_tp_operation_log` VALUES ('2083', 'admin', '2', '配置项ID472删除成功！', '124.200.176.197', '1636359561');
INSERT INTO `6_tp_operation_log` VALUES ('2084', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636359666');
INSERT INTO `6_tp_operation_log` VALUES ('2085', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636359692');
INSERT INTO `6_tp_operation_log` VALUES ('2086', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636360899');
INSERT INTO `6_tp_operation_log` VALUES ('2087', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636360906');
INSERT INTO `6_tp_operation_log` VALUES ('2088', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636360914');
INSERT INTO `6_tp_operation_log` VALUES ('2089', 'admin', '2', '栏目ID为402添加成功！', '124.200.176.197', '1636360962');
INSERT INTO `6_tp_operation_log` VALUES ('2090', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1636360973');
INSERT INTO `6_tp_operation_log` VALUES ('2091', 'admin', '2', '栏目ID为403添加成功！', '124.200.176.197', '1636360992');
INSERT INTO `6_tp_operation_log` VALUES ('2092', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1636361011');
INSERT INTO `6_tp_operation_log` VALUES ('2093', 'admin', '2', '栏目ID为404添加成功！', '124.200.176.197', '1636361039');
INSERT INTO `6_tp_operation_log` VALUES ('2094', 'admin', '2', '栏目ID为405添加成功！', '124.200.176.197', '1636361039');
INSERT INTO `6_tp_operation_log` VALUES ('2095', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1636361080');
INSERT INTO `6_tp_operation_log` VALUES ('2096', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1636361083');
INSERT INTO `6_tp_operation_log` VALUES ('2097', 'admin', '2', '栏目ID为406添加成功！', '124.200.176.197', '1636361094');
INSERT INTO `6_tp_operation_log` VALUES ('2098', 'admin', '2', '文章ID474添加成功！', '124.200.176.197', '1636361168');
INSERT INTO `6_tp_operation_log` VALUES ('2099', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636361209');
INSERT INTO `6_tp_operation_log` VALUES ('2100', 'admin', '2', '配置项ID461删除成功！', '124.200.176.197', '1636361235');
INSERT INTO `6_tp_operation_log` VALUES ('2101', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1636361238');
INSERT INTO `6_tp_operation_log` VALUES ('2102', 'admin', '2', '栏目ID为删除成功！', '124.200.176.197', '1636361243');
INSERT INTO `6_tp_operation_log` VALUES ('2103', 'admin', '2', '文章ID475添加成功！', '124.200.176.197', '1636361662');
INSERT INTO `6_tp_operation_log` VALUES ('2104', 'admin', '2', '删除成功！', '124.200.176.197', '1636361728');
INSERT INTO `6_tp_operation_log` VALUES ('2105', 'admin', '2', '文章ID476添加成功！', '124.200.176.197', '1636362053');
INSERT INTO `6_tp_operation_log` VALUES ('2106', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636362105');
INSERT INTO `6_tp_operation_log` VALUES ('2107', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636362130');
INSERT INTO `6_tp_operation_log` VALUES ('2108', 'admin', '2', '文章ID更新成功！', '124.200.176.197', '1636362238');
INSERT INTO `6_tp_operation_log` VALUES ('2109', 'admin', '2', '栏目ID为392开启成功！', '124.200.176.197', '1636422267');
INSERT INTO `6_tp_operation_log` VALUES ('2110', 'admin', '2', '修改配置成功', '124.200.176.197', '1636447851');
INSERT INTO `6_tp_operation_log` VALUES ('2111', 'admin', '2', '修改配置成功', '124.200.176.197', '1636448039');
INSERT INTO `6_tp_operation_log` VALUES ('2112', 'admin', '2', '修改配置成功', '124.200.176.197', '1636448047');
INSERT INTO `6_tp_operation_log` VALUES ('2113', 'admin', '2', '编辑广告ID39成功！', '124.200.176.197', '1636451303');
INSERT INTO `6_tp_operation_log` VALUES ('2114', 'admin', '2', '删除广告ID113成功！', '124.200.176.197', '1636451978');
INSERT INTO `6_tp_operation_log` VALUES ('2115', 'admin', '2', '删除广告ID114成功！', '124.200.176.197', '1636451980');
INSERT INTO `6_tp_operation_log` VALUES ('2116', 'admin', '2', '编辑广告ID39成功！', '124.200.176.197', '1636452025');
INSERT INTO `6_tp_operation_log` VALUES ('2117', 'admin', '2', '删除广告ID115成功！', '124.200.176.197', '1636452058');
INSERT INTO `6_tp_operation_log` VALUES ('2118', 'admin', '2', '编辑广告ID39成功！', '124.200.176.197', '1636452073');
INSERT INTO `6_tp_operation_log` VALUES ('2119', 'admin', '2', '登录成功！', '124.200.176.197', '1636506308');
INSERT INTO `6_tp_operation_log` VALUES ('2120', 'admin', '2', '修改配置成功', '124.200.176.197', '1636515994');
INSERT INTO `6_tp_operation_log` VALUES ('2121', 'admin', '2', '登录成功！', '123.120.189.154', '1636521542');
INSERT INTO `6_tp_operation_log` VALUES ('2122', 'admin', '2', '修改配置成功', '123.120.189.154', '1636521693');
INSERT INTO `6_tp_operation_log` VALUES ('2123', 'admin', '2', '栏目ID为407添加成功！', '123.120.189.154', '1636522268');
INSERT INTO `6_tp_operation_log` VALUES ('2124', 'admin', '2', '栏目ID为400开启成功！', '123.120.189.154', '1636522497');
INSERT INTO `6_tp_operation_log` VALUES ('2125', 'admin', '2', '栏目ID为400关闭成功！', '123.120.189.154', '1636522498');
INSERT INTO `6_tp_operation_log` VALUES ('2126', 'admin', '2', '栏目ID为408添加成功！', '123.120.189.154', '1636522601');
INSERT INTO `6_tp_operation_log` VALUES ('2127', 'admin', '2', '内容ID为473关闭成功！', '123.120.189.154', '1636525921');
INSERT INTO `6_tp_operation_log` VALUES ('2128', 'admin', '2', '内容ID为473开启成功！', '123.120.189.154', '1636525924');
INSERT INTO `6_tp_operation_log` VALUES ('2129', 'admin', '2', '栏目ID为400开启成功！', '124.200.176.197', '1636533737');
INSERT INTO `6_tp_operation_log` VALUES ('2130', 'admin', '2', '栏目ID为400关闭成功！', '124.200.176.197', '1636533738');
INSERT INTO `6_tp_operation_log` VALUES ('2131', 'kbmanager', '1', '修改配置项id58成功!', '124.200.176.197', '1636538454');
INSERT INTO `6_tp_operation_log` VALUES ('2132', 'kbmanager', '1', '修改配置成功', '124.200.176.197', '1636538520');
INSERT INTO `6_tp_operation_log` VALUES ('2133', 'admin', '2', '登录成功！', '124.200.176.197', '1636592600');
INSERT INTO `6_tp_operation_log` VALUES ('2134', 'kbmanager', '1', '登录成功！', '124.200.176.197', '1636615657');
INSERT INTO `6_tp_operation_log` VALUES ('2135', 'kbmanager', '1', '修改管理员ID4成功！', '124.200.176.197', '1636615672');
INSERT INTO `6_tp_operation_log` VALUES ('2136', 'kbmanager', '1', '退出成功！', '124.200.176.197', '1636615814');
INSERT INTO `6_tp_operation_log` VALUES ('2137', 'admin', '2', '登录成功！', '123.120.166.113', '1636686405');
INSERT INTO `6_tp_operation_log` VALUES ('2138', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636686853');
INSERT INTO `6_tp_operation_log` VALUES ('2139', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636687309');
INSERT INTO `6_tp_operation_log` VALUES ('2140', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636688561');
INSERT INTO `6_tp_operation_log` VALUES ('2141', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636688696');
INSERT INTO `6_tp_operation_log` VALUES ('2142', 'admin', '2', '栏目ID为409添加成功！', '123.120.166.113', '1636689200');
INSERT INTO `6_tp_operation_log` VALUES ('2143', 'admin', '2', '文章ID477添加成功！', '123.120.166.113', '1636689471');
INSERT INTO `6_tp_operation_log` VALUES ('2144', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636689687');
INSERT INTO `6_tp_operation_log` VALUES ('2145', 'admin', '2', '登录成功！', '123.120.166.113', '1636695985');
INSERT INTO `6_tp_operation_log` VALUES ('2146', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636696033');
INSERT INTO `6_tp_operation_log` VALUES ('2147', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636696279');
INSERT INTO `6_tp_operation_log` VALUES ('2148', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636697010');
INSERT INTO `6_tp_operation_log` VALUES ('2149', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636697124');
INSERT INTO `6_tp_operation_log` VALUES ('2150', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636697841');
INSERT INTO `6_tp_operation_log` VALUES ('2151', 'admin', '2', '修改配置成功', '123.120.166.113', '1636697946');
INSERT INTO `6_tp_operation_log` VALUES ('2152', 'admin', '2', '修改配置成功', '123.120.166.113', '1636698062');
INSERT INTO `6_tp_operation_log` VALUES ('2153', 'admin', '2', '修改配置成功', '123.120.166.113', '1636699955');
INSERT INTO `6_tp_operation_log` VALUES ('2154', 'admin', '2', '修改配置成功', '123.120.166.113', '1636700148');
INSERT INTO `6_tp_operation_log` VALUES ('2155', 'admin', '2', '修改配置成功', '123.120.166.113', '1636700229');
INSERT INTO `6_tp_operation_log` VALUES ('2156', 'admin', '2', '栏目ID为410添加成功！', '123.120.166.113', '1636701231');
INSERT INTO `6_tp_operation_log` VALUES ('2157', 'admin', '2', '文章ID478添加成功！', '123.120.166.113', '1636701272');
INSERT INTO `6_tp_operation_log` VALUES ('2158', 'admin', '2', '配置项ID478删除成功！', '123.120.166.113', '1636701915');
INSERT INTO `6_tp_operation_log` VALUES ('2159', 'admin', '2', '栏目ID为删除成功！', '123.120.166.113', '1636701934');
INSERT INTO `6_tp_operation_log` VALUES ('2160', 'admin', '2', '文章ID479添加成功！', '123.120.166.113', '1636701945');
INSERT INTO `6_tp_operation_log` VALUES ('2161', 'admin', '2', '登录成功！', '124.200.176.197', '1636702114');
INSERT INTO `6_tp_operation_log` VALUES ('2162', 'admin', '2', '栏目ID为411添加成功！', '124.200.176.197', '1636702176');
INSERT INTO `6_tp_operation_log` VALUES ('2163', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703336');
INSERT INTO `6_tp_operation_log` VALUES ('2164', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703406');
INSERT INTO `6_tp_operation_log` VALUES ('2165', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703430');
INSERT INTO `6_tp_operation_log` VALUES ('2166', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703490');
INSERT INTO `6_tp_operation_log` VALUES ('2167', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703513');
INSERT INTO `6_tp_operation_log` VALUES ('2168', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703535');
INSERT INTO `6_tp_operation_log` VALUES ('2169', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703557');
INSERT INTO `6_tp_operation_log` VALUES ('2170', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703587');
INSERT INTO `6_tp_operation_log` VALUES ('2171', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703614');
INSERT INTO `6_tp_operation_log` VALUES ('2172', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703653');
INSERT INTO `6_tp_operation_log` VALUES ('2173', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703677');
INSERT INTO `6_tp_operation_log` VALUES ('2174', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703752');
INSERT INTO `6_tp_operation_log` VALUES ('2175', 'admin', '2', '文章ID更新成功！', '123.120.166.113', '1636703776');
INSERT INTO `6_tp_operation_log` VALUES ('2176', 'admin', '2', '栏目ID为412添加成功！', '123.120.166.113', '1636703941');
INSERT INTO `6_tp_operation_log` VALUES ('2177', 'admin', '2', '配置项ID479删除成功！', '123.120.166.113', '1636704012');
INSERT INTO `6_tp_operation_log` VALUES ('2178', 'admin', '2', '栏目ID为删除成功！', '123.120.166.113', '1636704019');
INSERT INTO `6_tp_operation_log` VALUES ('2179', 'admin', '2', '栏目ID为413添加成功！', '123.120.166.113', '1636704118');
INSERT INTO `6_tp_operation_log` VALUES ('2180', 'admin', '2', '栏目ID为414添加成功！', '123.120.166.113', '1636704178');
INSERT INTO `6_tp_operation_log` VALUES ('2181', 'admin', '2', '栏目ID为删除成功！', '123.120.166.113', '1636704220');
INSERT INTO `6_tp_operation_log` VALUES ('2182', 'admin', '2', '栏目ID为删除成功！', '123.120.166.113', '1636704224');
INSERT INTO `6_tp_operation_log` VALUES ('2183', 'admin', '2', '栏目ID为删除成功！', '123.120.166.113', '1636704226');
INSERT INTO `6_tp_operation_log` VALUES ('2184', 'admin', '2', '栏目ID为删除成功！', '123.120.166.113', '1636704233');

-- ----------------------------
-- Records for `6_wd_admin_user`
-- ----------------------------
INSERT INTO `6_wd_admin_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',2016-08-05 14:08:48,2016-08-31 16:02:05,2016-09-18 14:30:34,2016-09-18 15:39:11,2016-10-17 09:54:36,2016-10-17 15:26:34,2016-10-17 15:44:08,2016-10-28 11:36:00,2016-12-26 15:37:14');

-- ----------------------------
-- Records for `6_wd_cate`
-- ----------------------------
INSERT INTO `6_wd_cate` VALUES ('306', '我们', '0', '6', '0', '0', '', '1', 'newss', '', '', '', '2016-08-22', '0', '', '', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('363', '企业招聘', '0', '98', '309', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1482386358', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('308', '新闻', '0', '9', '0', '0', '', '1', 'news', '', '', '', '2016-08-22', '0', '', '', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('309', '联系', '0', '11', '0', '0', '', '1', 'newss', '', '', '', '2016-08-22', '0', '', '', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('314', '新闻资讯', '0', '99', '308', '0', '', '', 'news', '', '', '', '2016-08-22 00:00', '1', '', '1589162472', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('315', '首页关于我们', '0', '4', '0', '0', '', '1', 'info', '', '', '', '2016-08-23', '0', '', '', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('316', '版权声明/渠道合作', '0', '20', '0', '0', '', '1', 'info', '', '', '', '2016-08-30', '0', '', '', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('364', '企业办公', '0', '97', '309', '0', '', '', 'newss', '', '', '', '2020-05-07 01:05', '1', '', '1589163991', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('354', '商务综合', '0', '0', '352', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1519893833', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('328', '企业新闻', '0', '99', '327', '0', '', '', 'news', '', '', '', '2016-08-31', '1', '', '1476675263', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('329', '行业动态', '0', '80', '327', '0', '', '', 'news', '', '', '', '2016-08-31', '1', '', '1476675805', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('335', '会展预告', '0', '70', '327', '0', '', '', 'news', '', '', '', '2016-10-17', '1', '', '1476675811', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('351', '賞味', '0', '8', '0', '0', '', '1', 'newss', '', '', '', '2016-12-21', '0', '', '', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('352', '案例', '0', '9', '0', '0', '', '1', 'news', '', '', '', '2016-12-21', '0', '', '', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('357', '规划设计', '0', '0', '352', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1482909556', '', '', '');
INSERT INTO `6_wd_cate` VALUES ('362', '荣誉资质', '0', '89', '306', '0', '', '', 'news', '', '', '', '2016-12-22', '1', '', '1588923366', '', '', '');

-- ----------------------------
-- Records for `6_wd_category`
-- ----------------------------
INSERT INTO `6_wd_category` VALUES ('2', '新闻类', 'news', '1');
INSERT INTO `6_wd_category` VALUES ('4', '单条信息类', 'info', '3');
INSERT INTO `6_wd_category` VALUES ('6', '多张图片类', 'image', '5');
INSERT INTO `6_wd_category` VALUES ('18', '二型新闻', 'newss', '');

-- ----------------------------
-- Records for `6_wd_image`
-- ----------------------------
INSERT INTO `6_wd_image` VALUES ('18', '', '0', '', '../uploads/20200508/20200508192822_258.jpg', '521', '', '2020-05-08', '', '', '1', '', '', '1588937302');
INSERT INTO `6_wd_image` VALUES ('19', '', '0', '', '../uploads/20200508/20200508192834_889.jpg', '521', '', '2020-05-08', '', '', '1', '', '', '1588937314');
INSERT INTO `6_wd_image` VALUES ('21', '', '0', '', '../uploads/20200508/20200508192850_751.jpg', '521', '', '2020-05-08', '', '', '1', '', '', '1588937330');
INSERT INTO `6_wd_image` VALUES ('22', '', '0', '', '../uploads/20200508/20200508193138_296.jpg', '522', '', '2020-05-08', '', '', '1', '', '', '1588937498');
INSERT INTO `6_wd_image` VALUES ('23', '', '0', '', '../uploads/20200508/20200508193155_467.jpg', '522', '', '2020-05-08', '', '', '1', '', '', '1588937515');
INSERT INTO `6_wd_image` VALUES ('24', '', '0', '', '../uploads/20200508/20200508193204_719.jpg', '522', '', '2020-05-08', '', '', '1', '', '', '1588937524');

-- ----------------------------
-- Records for `6_wd_message`
-- ----------------------------
INSERT INTO `6_wd_message` VALUES ('8', '2', '', '联系方式', '13566666666', 'taifute@taifute.com.cn', '', 'rwrwrgregregregw', '2016-07-28 16:30:16', '留言标题', '');
INSERT INTO `6_wd_message` VALUES ('9', '2', '', '钒铝合金', '13659988888', '395968009@qq.com', '', 'rewrewrewqr', '2016-07-28 16:31:02', 'title', '');
INSERT INTO `6_wd_message` VALUES ('32', '1', '', '姓名', '18045430118', '1111@qq.com', '公司', '留言内容', '2016-10-17 10:06:09', '留言标题', '');
INSERT INTO `6_wd_message` VALUES ('33', '1', '', '姓名1', '18045430118', '1111@qq.com', '公司1', '留言内容', '2016-10-18 18:29:03', '留言标题', '');

-- ----------------------------
-- Records for `6_wd_news`
-- ----------------------------
INSERT INTO `6_wd_news` VALUES ('639', '首页简介', '', '', '', '1', '', '0', '0', '<p><span style="color: rgb(242, 242, 242);">普强于2009年在美国硅谷成立全球研发中心，主要从事智能语音和语言技术研究。2010年设立中国运营公司，是金融科技创新和智能汽车AI服务提供商。在硅谷和中关村、上海、深圳、南京均建设有技术研发中心。专注于金融大数据、AI芯片，智能汽车领域，拥有100%自主知识产权60余项。普强始终致力于为客户提供完整的AI技术咨询和解决方案服务</span></p><p style="text-align: center;"><span style="color: rgb(242, 242, 242);">荣获科技部金领奖“2019年度最具成长力创新企业TOP50”<br style="box-sizing: border-box; color: rgb(116, 116, 116); font-family: " pingfang="" font-size:="" letter-spacing:="" white-space:="" background-color:=""/>荣获第十七届中国互联网经济论坛“2019年度金融科技突出贡献企业”<br style="box-sizing: border-box; color: rgb(116, 116, 116); font-family: " pingfang="" font-size:="" letter-spacing:="" white-space:="" background-color:=""/>荣获2019中国财经峰会冬季论坛“年度行业领军品牌”奖<br style="box-sizing: border-box; color: rgb(116, 116, 116); font-family: " pingfang="" font-size:="" letter-spacing:="" white-space:="" background-color:=""/>甲子光年2019中国最具商业潜力的20家科技Cool Vendor</span></p><p><br/></p>', '0', '315', '2020-05-07 00:00', '', '', '', 'info', '', '', '0', '0', '', '', '1588923027', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('296', '公司简介', '', '../uploads/20160830/20160830181852_281.jpg', '', '1', '', '99', '0', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;普强于2009年在美国硅谷成立全球研发中心，主要从事智能语音和语言技术研究。2010年设立中国运营公司，是金融科技创新和智能汽车AI服务提供商。在硅谷和中关村、上海、深圳、南京均建设有技术研发中心。专注于金融大数据、AI芯片，智能汽车领域，拥有100%自主知识产权60余项。普强始终致力于为客户提供完整的AI技术咨询和解决方案服务</p><p style="text-align: center;"><img src="/kb_006/ueditor/ueditor/php/upload/image/20200508/1588923177754045.png" title="1588923177754045.png" alt="image.png"/></p>', '0', '306', '2016-12-21', '', '', '', 'info', '', '', '0', '1', '', '', '1588923187', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('600', '智能车载', 'SMART CAR SOLUTIONS', '../uploads/20200511/20200511092839_394.png', '', '1', '', '99', '0', '<p><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589159172636397.png" title="1589159172636397.png" alt="image.png" width="873" height="292" style="width: 873px; height: 292px;"/></p><p><br/></p><p><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589159199558165.png" title="1589159199558165.png" alt="image.png" width="876" height="582" style="width: 876px; height: 582px;"/></p><p><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589159233677363.png" title="1589159233677363.png" alt="image.png" width="864" height="392" style="width: 864px; height: 392px;"/></p><p><br/></p>', '0', '351', '2016-12-21 00:00', '', '', '', 'info', '', '', '0', '0', '', '', '1589161030', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('697', '智慧营销', 'SMART MARKETING', '../uploads/20200511/20200511093118_306.png', '', '1', '', '0', '0', '<p><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589160593780166.png" title="1589160593780166.png" alt="image.png" width="883" height="422" style="width: 883px; height: 422px;"/></p><p><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589160611102049.png" title="1589160611102049.png" alt="image.png" width="883" height="520" style="width: 883px; height: 520px;"/></p><p><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589160645112269.png" title="1589160645112269.png" alt="image.png" width="883" height="388" style="width: 883px; height: 388px;"/></p>', '0', '351', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '0', '', '', '1589160998', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('698', '智能语音', 'INTELLIGENT VOICE QUALITY INSPECTION', '../uploads/20200511/20200511093531_283.png', '', '1', '', '0', '0', '<p><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589160827826640.png" title="1589160827826640.png" alt="image.png" width="832" height="465" style="width: 832px; height: 465px;"/></p><p><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589160845761748.png" title="1589160845761748.png" alt="image.png" width="834" height="451" style="width: 834px; height: 451px;"/></p>', '0', '351', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '0', '', '', '1589160969', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('261', '产品介绍', '', '', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">官方天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">公司正式成立于2009年，技术力量雄厚，拥有两位博士及众多从事汽车转向行业的高、中级技术工程师，有能力根据客户车辆需求设计各种类型的电动助力转向器。经过多年发展，天津德科建立起独立的总成车间、无尘无静电恒温恒湿控制器生产车间和拥有全套助力转向器试验的实验室。同时，德科还获得了欧盟的CE认证及ISO/TS16949 质量体系认证德科以“品质为王”的制造精神赢得了国内外客户的青睐和信任成为同行业出口第一的企业。德科愿与您共同发展，为社会创造效益，为员工创造价值。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p><br/></p>', '1', '260', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857118', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('262', '应用领域', '', '', '', '1', '', '0', '0', '<p>应用领域</p>', '1', '260', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857153', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('263', '相关参数', '', '', '', '1', '', '0', '0', '<p>相关参数</p><p><br/></p>', '1', '260', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857180', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('264', '产品介绍', '', '', '', '1', '', '1', '0', '<p><br/></p><p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">官方天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">公司正式成立于2009年，技术力量雄厚，拥有两位博士及众多从事汽车转向行业的高、中级技术工程师，有能力根据客户车辆需求设计各种类型的电动助力转向器。经过多年发展，天津德科建立起独立的总成车间、无尘无静电恒温恒湿控制器生产车间和拥有全套助力转向器试验的实验室。同时，德科还获得了欧盟的CE认证及ISO/TS16949 质量体系认证德科以“品质为王”的制造精神赢得了国内外客户的青睐和信任成为同行业出口第一的企业。德科愿与您共同发展，为社会创造效益，为员工创造价值。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p><br/></p>', '1', '254', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857218', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('265', '应用邻域', '', '', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">官方天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p style="margin-top: 0px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">公司正式成立于2009年，技术力量雄厚，拥有两位博士及众多从事汽车转向行业的高、中级技术工程师，有能力根据客户车辆需求设计各种类型的电动助力转向器。经过多年发展，天津德科建立起独立的总成车间、无尘无静电恒温恒湿控制器生产车间和拥有全套助力转向器试验的实验室。同时，德科还获得了欧盟的CE认证及ISO/TS16949 质量体系认证德科以“品质为王”的制造精神赢得了国内外客户的青睐和信任成为同行业出口第一的企业。德科愿与您共同发展，为社会创造效益，为员工创造价值。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 35px; white-space: normal; text-indent: 2em;">天津德科汽车部件有限公司是天津市环宇（投资）集团子公司。位于天津市津南区，是一家集科研、生产及销售于一体的现代化高科技企业。德科的核心研发人员从2001年开始，致力于汽车电动助力转向控制器的研究与生产，是国内最早进行电动助力转向控制器开发的公司之一</p><p><br/></p>', '1', '254', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857271', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('266', '相关参数', '', '', '', '1', '', '0', '0', '<p>相关参数</p>', '1', '254', '2016-08-22', '', '', '', '', '', '', '0', '0', '', '', '1471857288', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('286', '版权声明', '', '../uploads/20161017/20161017160609_512.jpg', '', '1', '', '0', '0', '<p style="margin-top: 0px; margin-bottom: 20px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; line-height: 24px; white-space: normal; text-align: center;">更新中...</p>', '0', '316', '2016-08-03 ', '', '', '', 'info', '', '', '0', '1', '', '', '1551348019', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('570', '渠道合作', '1.flv', '../uploads/20161028/20161028160823_382.jpg', '', '1', '', '0', '0', '<p>请拨打电话18201073550&nbsp;<span style="color: rgb(255, 255, 255); font-family: " pingfang="" font-size:="" font-weight:="" letter-spacing:="" background-color:="">18201073550</span><span style="color: rgb(255, 255, 255); font-family: " pingfang="" font-size:="" font-weight:="" letter-spacing:="" background-color:="">18201073550</span><span style="color: rgb(255, 255, 255); font-family: " pingfang="" font-size:="" font-weight:="" letter-spacing:="" background-color:="">18201073550</span></p>', '0', '316', '2016-10-28 00:00', '', '', '', 'info', '', '', '0', '0', '', '', '1589165044', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('628', '加入我们', '', '', '', '1', '', '0', '0', '<p style="text-align: center;"><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589164177676416.png" title="1589164177676416.png" alt="image.png" width="900" height="498" style="width: 900px; height: 498px;"/></p>', '0', '363', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '0', '', '', '1589164401', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('659', '银泰中心', '', '../uploads/20190228/20190228175249_982.jpg', '', '1', '', '0', '1', '<p microsoft="" font-size:="" white-space:="" line-height:="" text-align:="" style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px; color: rgb(102, 102, 102);"><span microsoft=""><strong><span style="color: rgb(0, 32, 96);">银泰中心</span></strong></span></p><p microsoft="" font-size:="" white-space:="" line-height:="" style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px; color: rgb(102, 102, 102);"><span microsoft="" style="color: rgb(0, 32, 96);"><br/></span></p><p microsoft="" font-size:="" white-space:="" line-height:="" style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px; color: rgb(102, 102, 102);"><span microsoft="" style="color: rgb(0, 32, 96);">银泰中心由世界著名建筑师John C. Portman担纲设计，其优雅与和简捷的设计风格所体现的高贵、威严、大气，与新时代的北京非常吻合，是新世纪长安街的至高点和地标性建筑。项目总建筑面积350,000平方米，主楼高达249.9米。 银泰中心拥有CBD最豪华的极品公寓：仅有21套极品公寓柏悦府，216套酒店服务式公寓柏悦居，其中21套柏悦府为国际级商业首脑度身定制。该中心位于北京中心商务区的核心地带，北临长安街，与国贸遥相呼应，东临东三环路，南为建外 SOHO，是长安街的地标性建筑。距离北京火车站4公里，距离首都机场仅20公里，地理位置十分优越。</span></p><div><span microsoft="" style="color: rgb(0, 32, 96);"><br/></span></div><p><br/></p>', '0', '357', '2016-12-24', '', '', '', 'info', '', '', '0', '10', '', '', '1551348628', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('683', '荣誉称号', '', '../uploads/20200511/20200511083815_730.png', '', '1', '', '0', '0', '', '0', '362', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '0', '', '', '1589157628', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('611', '荟聚 英特宜家购物中心', '', '../uploads/20180301/20180301164525_467.jpg', '', '1', '', '0', '1', '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 24px; text-align: center;"><span style="font-size: 16px;"><strong><span style="font-family: 微软雅黑; color: rgb(36, 64, 97);">荟聚 英特宜家购物中心</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 24px;"><span style="font-family: 微软雅黑; font-size: 16px; color: rgb(36, 64, 97);">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 21px;"><span style="font-size: 16px;"><strong><span style="font-family: 微软雅黑; line-height: 24px; color: rgb(36, 64, 97); letter-spacing: 0px; background: rgb(255, 255, 255);">┃</span></strong><strong><span style="font-family: 微软雅黑; line-height: 24px; color: rgb(36, 64, 97); letter-spacing: 0px; background: rgb(255, 255, 255);">项目地点：北京市大兴区</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 21px;"><span style="font-size: 16px;"><strong><span style="font-family: 微软雅黑; line-height: 24px; color: rgb(36, 64, 97); letter-spacing: 0px; background: rgb(255, 255, 255);">┃</span></strong><strong><span style="font-family: 微软雅黑; line-height: 24px; color: rgb(36, 64, 97); letter-spacing: 0px; background: rgb(255, 255, 255);">项目性质：商业综合体亮化</span></strong><strong><span style="font-family: 微软雅黑; line-height: 24px; color: rgb(36, 64, 97); letter-spacing: 0px; background: rgb(255, 255, 255);"></span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 21px;"><span style="font-size: 16px;"><strong><span style="font-family: 微软雅黑; line-height: 24px; color: rgb(36, 64, 97); letter-spacing: 0px; background: rgb(255, 255, 255);">┃项目时间：2014年</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 24px;"><strong><span style="font-family: 微软雅黑; font-size: 16px; color: rgb(36, 64, 97);"><br/></span></strong></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 24px;"><span style="font-family: 微软雅黑; font-size: 16px; color: rgb(36, 64, 97);">&nbsp; &nbsp; &nbsp;&nbsp;</span><span style="color: rgb(36, 64, 97); font-family: 微软雅黑; text-indent: 28px;">北京英特宜家购物中心总占地面积约17.2万㎡，荟聚国内外600多个知名零售品牌，集百货、超市、家电、运动、餐饮、娱乐等全方位消费功能为一体，是具有国际化标准的超级区域性购物中心。&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, &quot;Microsoft Yahei&quot;; font-size: 14px; white-space: normal; line-height: 24px;"><span style="color: rgb(36, 64, 97); text-indent: 28px; font-family: 微软雅黑;">&nbsp; &nbsp; &nbsp; 该项目室内、外及地下车库均使用最先进的LED照明产品，并搭配智能照明控制系统，实现调光、实时监控、智能管理等功能。其地下车库被</span><span style="color: rgb(36, 64, 97); text-indent: 28px; font-family: 微软雅黑; letter-spacing: 0px; background: rgb(255, 255, 255);">吉尼斯世界纪录官方认证，深达三层的停车场经吉尼斯世界纪录官方测评，以6652个车位数量荣获“最大地下停车场”的称号。</span><span style="color: rgb(36, 64, 97); text-indent: 28px; font-family: 微软雅黑;">&nbsp;</span></p><p><br/></p>', '0', '354', '2016-12-22', '', '', '', 'info', '', '', '0', '13', '', '', '1519893997', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('688', '银泰中心', '', '../uploads/20180301/20180301164559_275.jpg', '', '1', '', '0', '1', '<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, " microsoft="" font-size:="" white-space:="" line-height:="" text-align:=""><span style="font-size: 16px; font-family: 微软雅黑, " microsoft=""><strong><span style="color: rgb(0, 32, 96);">银泰中心</span></strong></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, " microsoft="" font-size:="" white-space:="" line-height:=""><span style="color: rgb(0, 32, 96); font-family: 微软雅黑, " microsoft=""><br/></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: arial, " microsoft="" font-size:="" white-space:="" line-height:=""><span style="color: rgb(0, 32, 96); font-family: 微软雅黑, " microsoft="">银泰中心由世界著名建筑师John C. Portman担纲设计，其优雅与和简捷的设计风格所体现的高贵、威严、大气，与新时代的北京非常吻合，是新世纪长安街的至高点和地标性建筑。项目总建筑面积350,000平方米，主楼高达249.9米。 银泰中心拥有CBD最豪华的极品公寓：仅有21套极品公寓柏悦府，216套酒店服务式公寓柏悦居，其中21套柏悦府为国际级商业首脑度身定制。该中心位于北京中心商务区的核心地带，北临长安街，与国贸遥相呼应，东临东三环路，南为建外 SOHO，是长安街的地标性建筑。距离北京火车站4公里，距离首都机场仅20公里，地理位置十分优越。</span></p><p><br/></p>', '0', '354', '2018-03-01', '', '', '', 'info', '', '', '0', '17', '', '', '1551348637', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('620', '智能语音技术唤醒全新信息生活', '普强', '../uploads/20200511/20200511101457_964.jpg', '', '1', '', '0', '1', '<p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(34, 34, 34);">现如今，智能语音技术在移动终端上的应用极为热门，语音对话机器人、语音助手、互动工具等应用层出不穷，那么智能语音技术是什么？其发展过程有哪些难点？发展过程中要注意哪些问题呢？</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; font-weight: 700; color: rgb(34, 34, 34);">首先，我们以车载语音系统为例展开讨论：</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589163285949582.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; width: 910px; height: 274px;" width="910" height="274"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: black;">这个过程是怎样实现的？首先，车载语音系统把听到的声音转化成文字，然后理解内容，最后做出响应策略，并把响应策略转化成语音。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; font-weight: 700; color: black;">上述过程体现了以下核心能力：</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><blockquote style="box-sizing: border-box; margin: 0px 0px 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; font-weight: 700; color: rgb(65, 70, 75);">“音转字”</span><span style="box-sizing: border-box; color: rgb(65, 70, 75);">，也就是自动语音识别 (ASR)，让机器通过识别和理解过程把语音信号转化为相应的文本或命令的技术。</span></blockquote><blockquote style="box-sizing: border-box; margin: 0px 0px 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; font-weight: 700; color: rgb(65, 70, 75);">“字转音”</span><span style="box-sizing: border-box; color: rgb(65, 70, 75);">，即从文本到语音（TTS），是把计算机中任意出现的文字转换成自然流畅的语音输出。</span></blockquote><blockquote style="box-sizing: border-box; margin: 0px 0px 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; font-weight: 700; color: rgb(65, 70, 75);">自然语言处理（NLP）</span><span style="box-sizing: border-box; color: rgb(65, 70, 75);">，用计算机来处理、理解以及运用人类语言，让人与计算机之间进行有效通讯。所谓“自然”乃是寓意自然进化形成，是为了区分一些人造语言，如C、C++、Java 等人为设计的计算机语言。</span></blockquote><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: black;">ASR是让机器实现“听”的能力，而TTS是让机器实现“说”的能力，结合自NLP的“思考运算”，理解并处理文本，即组成了人机交互的基本能力。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); text-align: left;" pingfang="" letter-spacing:="" white-space:="" background-color:=""><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589163286944375.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; width: 905px; height: 399px;" width="905" height="399"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(123, 127, 131);">语音交互的基本模型</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(34, 34, 34);">智能语音技术除了基本的语音技术，还主要依托于信息系统技术和文本处理技术。如果缺乏强大的计算能力以及更高级算法模型的前提条件，语音识别及分析技术终究是实验室以及小众场景领域的“理论”成果。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(34, 34, 34);">在过去的几年，硬件技术以及云计算快速发展，计算机算力一直在提升，加</span><span style="box-sizing: border-box; color: black;">上人工神经网络算法的支</span><span style="box-sizing: border-box; color: rgb(34, 34, 34);">持，让语音的训练变得越来越容易和</span><span style="box-sizing: border-box; color: black;">高效。以往可能需要数周甚至数月时间的训练过程被缩短到数天乃至数小时，使得各种语音应用变得“随用可取“，极大加速了智能语音应用的蓬勃发展。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(34, 34, 34);">语音识别技术由来已久，但在很长一段时间都没有很成熟的应用出现。在技术上要准确地识别一段语音，其实是件非常困难的事情，除了不同语种的区别，方言口音各异、新词新语的涌现等也对识别准确率造成较大的影响。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(34, 34, 34);">许多国外英语环境下非常优秀的智能语音厂商，其技术应用表现在英语环境下非常不错。但对于中文环境，一开始有点“水土不服”，其实就是中文语音的数据训练太少导致。很多同事在调研或了解某个实际语音应用产品时，发现其方言识别能力逐渐增强，为什么会有这样的结果呢？其实是训练了大量的数据。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(34, 34, 34);">随着互联网的快速发展，以及手机等移动终端的普及应用，各AI语音公司可以从多个渠道获取大量文本或语音方面的语料，这为语音识别中的语言模型和声学模型训练提供了丰富的资源，使得构建通用大规模语言模型和声学模型成为可能。在语音识别中，训练数据的匹配度和丰富性是推动系统性能提升的最重要因素之一。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589163287478341.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; width: 915px; height: 509px;" width="915" height="509"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(34, 34, 34);">相对十年前的情况来看，目前绝大部分语音识别技术的翻译准确率都已达较高水平，在噪音处理、语气语调、语义理解等方面均已大大提升，而最终能力上的差异关键在于</span><span style="box-sizing: border-box; color: black;">：一，是否拥有核心的专利技术与能力；二，是否有足够多的商业落地场景和实施经验。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(34, 34, 34);">人工智能时代，智能语音已经脱离简单的信息查询功能，通过与内容服务的深度融合，拓展出各种新产品、新应用和新服务，进而带动智能语音向垂直行业更深入地拓展。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(34, 34, 34);">语音交互作为人机交互的重要演进方向，正逐步渗透到人们的日常生活与应用当中，构建一种全新的信息生活方式。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; font-weight: 700; color: black;">普强多年来一直以“语音”为中心，专注金融大数据、AI芯片、智能汽车领域。</span><span style="box-sizing: border-box; color: rgb(34, 34, 34);">回过头来看普强的成功经验，语音在产品化的过程中，必须与真实使用场景紧密贴合，符合不同目标群体对于语音产品实时性和准确性的需求。同时，由于不同的环境具有不同的声音特质针对化处理，普强在降噪、方言、远场所需要的解决方案也颇有建树。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(34, 34, 34);">智能语音在行业及商业上的落地需要脚踏实地做实际的事情，解决真实业务上的痛点。</span></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><br style="box-sizing: border-box;"/></p><p class="ql-align-justify" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38);" pingfang="" letter-spacing:="" white-space:="" background-color:=""><span style="box-sizing: border-box; color: rgb(34, 34, 34);">关于智能语音技术的应用和落地，我们将进一步进行讨论。</span></p>', '0', '314', '2016-12-22 00:00', '', '', '', 'info', '', '', '0', '19', '', '', '1589163605', '1', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('622', '深度 | AI 建模实际应用场景及效益', '普强', '../uploads/20200511/20200511101704_620.jpg', '', '1', '', '0', '1', '<div id="home-main" class="home-main" style="box-sizing: border-box; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" text-align:="" white-space:="" background-color:=""><div data-v-4bb8e582="" class="contact_us" style="box-sizing: border-box;"><div data-v-cf2cf770="" data-v-4bb8e582="" id="news-container" class="newsinfo" style="box-sizing: border-box; text-align: left; padding: 20px 10px;"><div data-v-cf2cf770="" class="container" style="box-sizing: border-box; margin-left: auto; margin-right: auto; padding-left: 0.9375rem; padding-right: 0.9375rem; max-width: 1140px;"><div data-v-cf2cf770="" style="box-sizing: border-box;"><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">随着 AI 科技的发展，过去很多无法应用计算机算法分析的场景现在已经成为可能，并且能经由 AI 的算法带来实际的业务效益，提升营收。本文将以普强的 AI 建模、语义理解、语音识别等相关技术为核心所建立的一套优化商业场景机制，在行业中的实际应用所产生的效益做详细阐述。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">国内一名列世界 500 强的保险公司（以下简称“A 保险公司”），拥有庞大的电销团队，雇佣了上万名电销人员，每月电销电话拨打量达到千万通。由于客户名单基本为白名单，即没有客户的信息，传统的格式化维度分析无法应用，所以A保险公司在没有客户信息的情况下，实行全量拨打，这样的拨打效果成交率在千分之一以下。另一方面，全量拨打的电销电话也给客户带来不良的印象，对客户造成不必要的干扰。近年来，监管力度逐年上升，对电销电话管控严度加大。为能有效运营电销就需要有特定对象，向有购买保险意愿的客户精准的拨打。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589163410180690.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; width: 852px; height: 434px;" width="852" height="434"/></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">随着 AI 科技的进步，普强 AI 建模产品的核心运用了最新的 AI 语音转译和语义理解技术，为这样的场景提供了一个极佳的解决方案，能够让 A 保险公司和有类似业务场景公司的电销人员将资源集中在有潜在购买意愿的客户。一方面，避免拨打全量的电话，减少人力资源和电信话费，另一方面，能有效减少对没有购买意愿客户的干扰。当客户有意愿和需求购买保险时，电销的外呼电话不被认为是干扰；相反，对没有购买意愿或能力的人，这样的电话即成为客户的干扰。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">事实上，经过 AI 建模的分析，在数百万的客户名单中，有购买意愿的大约在 15% 左右，因此 80% 以上的电话都是不必要拨打的。这样的应用给 A 保险公司和有类似应用场景的公司省下巨大的成本。接下来，将会对此做详尽的描述。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span style="box-sizing: border-box; font-weight: 700;">一、语音语义理解可获取有价值的客户特征</span></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">虽然没有客户的固定维度信息，但是有许多已拨打过的录音，A 保险公司拥有海量的客户通话录音，录音内含有宝贵的客户信息、客户特征等。这些数据都可以作为筛选客户的依据，例如在电销的过程中可以得知：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><ul style="box-sizing: border-box; margin-bottom: 1rem;" class=" list-paddingleft-2"><li><p>买过保险：“谢谢，我已经有保险了”。</p></li><li><p>可能有车：“对不起，我正在开车，不方便讲话”。</p></li><li><p>有房人士：“我目前房贷压力大，没有闲钱买保险”。</p></li></ul><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">还有许多类似的特征都可以从电销人员和客户的通话中获取，做成客户画像。普强过去积累了许多成功案例，其中就包含大量这样有价值的客户特征。从各样的案例中，电销人员重点关注拥有这些特征的客户，拨打给这类有较高意愿的客户并提高销售力度，增加拨打次数和跟进，从而提升销售成交率。因此，若能将这些宝贵的客户信息特征挖掘出来，也就能更进一步找出潜在客户，从而将电销团队的大量资源（人力、时间、电话费用……）做最有效的运用，达到最大收益。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span style="box-sizing: border-box; font-weight: 700;">二、AI语音转译和语义理解</span></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">自从 2010 年苹果电脑、手机发布 Siri 应用后，语音识别技术不断的更新、突破。其主要是源于一种计算机算法架构的技术突破：深度神经网络。使用神经网络的技术，研究人员不断推进许多人工智能以前不能突破的障碍，例如语音识别、图像识别、语义理解等三大领域。借助神经网络架构，这些领域里的问题都大大提升了应用上的效果。这样的突破主要由以下几个因素造成：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><ul style="box-sizing: border-box; margin-bottom: 1rem;" class=" list-paddingleft-2"><li><p>数据量徒增：借着互联网的发展，大量的用户将语音、图像、照片、文字上传到大型的数据中心。</p></li><li><p>大型云计算中心超级的运算能力：能储存、处理、分析这些海量的数据。</p></li><li><p>算法突破：借助前两项，算法得以不断的被验证、优化、迭代更新，创新的神经网络架构不断的被提出并被验证。</p></li></ul><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">在语音识别方面，2017 年微软研究院的技术达到了与人翻译的结果相同的里程碑。在电话对话的数据集（Switchboard），微软的研究员们使用了多个神经网络模型来翻译使结果达到最优，翻译的字错误率与4位专业翻译人士共同翻译的错误率基本相同。2018 年谷歌的 DeepMind 使用了大型的 CNN-RNN-CTC 神经网络架构，翻译结果比翻译专家好六倍。同时在图像识别方面，也同样有重大突破，使得自动驾驶这样复杂的工作，变得可实现。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; text-align: center;"><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589163410452737.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; width: 735px; height: 240px;" width="735" height="240"/></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">语音、图像识别持续突破，在语义理解方面，使用神经网络架构的算法也突破了人的水平。著名的史丹佛大学语义理解竞赛的文本问答数据集，内有 10 万条问答，都是从维基百科摘选的文章片段，然后对每一片段由真人提出问题，并在文章片段内找出答案的位置。准确率由 2017 年前的 60% 迅速攀升到最新的 90% 以上，远远超过人的水平，人的水平为 86.8%，而准确率最高的神经网络是 94.6%。它所使用的神经网络架构为一种称为 Transformer 的网络，叠加 24 次，形成一个深度大型的网络（BERT），并使用了兆级数量的词汇做训练。在其它常用的语义任务上，神经网络也都极大的提升了准确率，例如命名实体识别（NER）、关系识别、文本蕴含（text entailment）等。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">这些人工智能的科技突破，让许多以往计算机不能应用到的场景成为新的应用。在语音方面，企业存储的海量录音，以往是黑盒子，无法进行分析整理。不像结构化的数据，使用大型的数据库，可以做查询、统计、分析、图表化等工作。如今，可以经由语音识别成为文字，然后再经由语义理解做分析，产生实际的应用效益。接下来将对最新的语音、语义技术在人工智能科技的应用作案例分析。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span style="box-sizing: border-box; font-weight: 700;">三、语音语义分析现行科技状况</span></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">语音识别相对比较容易理解和定义，其任务就是将声音转成文字，而转化的效果可以简易的用字错误率来界定。但是识别的准确率与诸多因素相关，可以用人的体验来做比喻，因为人工智能基本就是模仿人的智能：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><ul style="box-sizing: border-box; margin-bottom: 1rem;" class=" list-paddingleft-2"><li><p>专业领域：如果在一个不同的专业领域，例如医学，许多的用语不是一般常用的，一个非医学专业的人士不容易理解这些医学的用语，做文字转化的也会出错。</p></li><li><p>口音/方言：严重的方言口音或是方言。</p></li><li><p>传播媒介：如电话信道。</p></li><li><p>背景声音：如吵杂的环境。</p></li></ul><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">这些都会影响识别的结果，就像人需要时间适应后才能听懂一个新环境里的对话交流。所以要降低语音转译的错误率，必须要能对专业或应用领域有足够的认识，熟悉地域的口音、方言等。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">普强的语音转译专注于固定领域来积累领域的专业话语，也同时积累了大量的语音覆盖了口音、方言、传播媒介特性、背景声音等因素，来优化语音转译的正确率。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">另一方面，语义理解任务相对的就比较不容易定义和理解，有一组学术界定义的语义理解相关的问题（GLUE）：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><ul style="box-sizing: border-box; margin-bottom: 1rem;" class=" list-paddingleft-2"><li><p>CoLA：单句的二分类问题, 判断一个英文句子在语法上是不是可接受的。</p></li><li><p>SST-2：单句的二分类问题, 句子的来源于人们对一部电影的评价, 判断这个句子的情感。</p></li><li><p>MRPC：句子对来源于对同一条新闻的评论，判断这一对句子在语义上是否相同。</p></li><li><p>STS-B：这是一个类似回归的问题，给出一对句子，使用 1~5 的评分评价两者在语义上的相似程度。</p></li><li><p>QQP：这是一个二分类数据集，目的是判断两个来自于 Quora 的问题句子在语义上是否是等价的。</p></li><li><p>MNLI-m：语型内匹配。推断两个句子是意思相近, 矛盾，还是无关的。</p></li><li><p>MNLI-mm：跨语型匹配。推断两个句子是意思相近，矛盾，还是无关的。</p></li><li><p>QNLI：也是一个二分类问题，两个句子是一个(question,answer)对，正样本为 answer 是对应question的答案，负样本则相反。</p></li><li><p>RTE：是一个二分类问题，类似于 MNLI, 但是数据量少很多。</p></li><li><p>WNLI：推断两个句子是意思相近，矛盾，还是无关的。</p></li><li><p>AX：QA型图像数据库。</p></li></ul><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">这些任务都有许多应用场景，但是语义理解的应用范畴也有很多不能直接应用这些任务，例如从一段对话文本中来判断一个人是否结婚，如下面的对话：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">A：您好，我想跟您谈下我们公司最近的一个产品的活动，这个产品能够......</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">B：嗯，谢谢，不过我需要和我老婆商量商量....</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">明显的从这段对话里，可以判定B是已经结过婚的人。再例如，服务业里常有禁忌的用语如：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">A-先听我说or A-是谁说or A-怎么知道or A-谁告诉你or A-有没有搞错or A-你弄错了or A-说重点or A-你必须or A-本来应该or A-这个部门很差劲or A-这个部门差劲or A-到底需要不需要or A-你不要跟我喊or A-你明白了吗or A-那您觉得呢or A-我说的很清楚了or A-刚才不是对你说了</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">这样的语义理解应用均不是 GLUE 里面的任务能够直接应用的，并且在 GLUE 里表现良好的神经网络架构也不能保证在真实应用的场景里达到产生业务价值的效果。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">2018 年底，谷歌发布了一种神经网络架构 BERT，一种基于 Transformer 架构的多层叠加的神经网络，BERT 提出两种版本，基本版（BASE）和大型版（LARGE），参数如下：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><ul style="box-sizing: border-box; margin-bottom: 1rem;" class=" list-paddingleft-2"><li><p>BERTBASE: L=12, H=768, A=12, Total Parameters=110M</p></li><li><p>BERTLARGE: L=24, H=1024, A=16, Total Parameters=34</p></li></ul><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">使用了 3.3Giga 的词汇作预训练，然后再按任务作微调训练，硬件使用了谷歌 TPU V2.0 的处理器，BERT 的基础版（BASE）需要 16 个 TPU 芯片，BERT 的 LARGE 版使用了 64 个 TPU 芯片，预训练需要 4 天。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589163410728441.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; width: 791px; height: 169px;" width="791" height="169"/></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">在 GLUE 的许多任务上均优于此前的神经网络架构（如上表所列）。BERT 在语音识别和图像识别突破后带来了语义理解的突破。此后在 BERT 的基础上，在语义理解的许多应用上都带来了突破。然而由于 BERT 和后续的神经网络都需要庞大的计算资源和时间，给私有化部署的应用带来高昂的成本，除非能够使用云端共享的 BERT 计算资源。由于数据保密的要求，许多应用的数据无法上传到云端，例如金融业的客户数据等。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">如前所述，这样的科技还需要经过再创新才能应用在实际的商业场景里。普强在这个方面做了十年的科研投入，不断的将最新的科技应用在实际的商业场景上。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span style="box-sizing: border-box; font-weight: 700;">四、普强语音语义框架</span></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">当前人工智能算法均属在高维度的空间中寻找线性/非线性复合函数的最优值点，其最核心的架构设计实为设计此高维度空间里的数学复合函数，许多的复合函数/神经网络框架都在不同的任务中被验证有应用的效益，下面列举了几个重要的类别：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><ul style="box-sizing: border-box; margin-bottom: 1rem;" class=" list-paddingleft-2"><li><p>全联多层的神经网络：每层的神经元均与下一层的所有神经元相连，逻辑回归等算法均使用此种网络。</p></li><li><p>卷积神经网络（Convolutional Neural Networks, CNN）：是一类包含卷积计算且具有深度结构的前馈神经网络（Feedforward Neural Networks），是深度学习（deep learning）的代表算法之一。卷积神经网络具有表征学习（representation learning）能力，能够按其阶层结构对输入信息进行平移不变分类（shift-invariant classification），因此也被称为“平移不变人工神经网络（Shift-InvariantArtificial Neural Networks, SIANN）。卷积神经网络架构在视觉辨识里达到了极优的效果。</p></li><li><p>循环神经网络（Recurrent Neural Network, RNN）：是一类以序列（sequence）数据为输入，在序列的演进方向进行递归（recursion）且所有节点（循环单元）按链式连接的递归神经网络（recursive neural network）。循环神经网络的研究始于二十世纪 80-90 年代，并在二十一世纪初发展为深度学习（deep learning）算法之一，其中双向循环神经网络（Bidirectional RNN, Bi-RNN）和长短期记忆网络（LongShort-Term Memory networks，LSTM）是常见的的循环神经网络。循环神经网络具有记忆性、参数共享并且图灵完备（Turing completeness），因此在对序列的非线性特征进行学习时具有一定优势。循环神经网络在自然语言处理（Natural Language Processing, NLP），例如语音识别、语言建模、机器翻译等领域有应用，也被用于各类时间序列预报。引入了卷积神经网络（Convoutional Neural Network,CNN）构筑的循环神经网络可以处理包含序列输入的计算机视觉问题。</p></li><li><p>Transformer神经网络：抛弃了传统的 CNN 和 RNN，整个网络结构完全是由 Attention 机制组成。更准确地讲，Transformer 由且仅由 Self-Attenion 和 Feed Forward NeuralNetwork 组成。一个基于 Transformer 的可训练的神经网络可以通过堆叠 Transformer 的形式进行搭建，作者的实验是通过搭建编码器和解码器各6层，总共12层的 Encoder-Decoder，并在机器翻译中取得了 BLEU 值得新高。</p></li><li><p>CTC（Connectionis ttemporal classification）：传统的语音识别的声学模型训练，对于每一帧的数据，需要知道对应的 label 才能进行有效的训练，在训练数据之前需要做语音对齐的预处理。而语音对齐的过程本身就需要进行反复多次的迭代，来确保对齐更准确，这本身就是一个比较耗时的工作。与传统的声学模型训练相比，采用 CTC 作为损失函数的声学模型训练，是一种完全端到端的声学模型训练，不需要预先对数据做对齐，只需要一个输入序列和一个输出序列即可以训练。这样就不需要对数据对齐和一一标注，并且 CTC 直接输出序列预测的概率，不需要外部的后处理。</p></li></ul><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">以上仅就目前人工智能应用领域里经常使用并产生实际应用效益的网络做了简介，当应用到各个实际场景里时，还有基于上述网络衍生的众多版本和彼此之间的结合版，不能一一详述。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">深度学习里的神经网络架构及其参数和超参数均需按实际场景和数据的情况作调试优化，方能达到理想的效果以产生实际应用价值。然而实际的场景虽然都有相似之处，但也有诸多不同的细节，为能满足每一应用场景的应用效益要求，以过往往需要由资深的算法工程师做深度的调试，此种模式耗时且效率低，常常不能满足客户快速的迭代需求。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589163410132826.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; width: 852px; height: 331px;" width="852" height="331"/></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">大型人工智能科技公司提倡将大量的数据存储在它们的云计算平台上，并同时按采集到的海量数据调试一个能广泛应用的平台。此种商业模式，虽有可行性，但同时也面临着一些根本的挑战。例如如何能保证数据的安全，特别是金融行业和其它对数据保密要求高的行业，同时这些大型的人工智能公司现今也不断的扩张他们的业务领域，将数据提供给此类的云平台，也加速了他们的竞争力来切入不同的商业领域，这样的担忧也是使得这样的方法无法获得更多商业应用的数据，从而不能提供一个通用的应用人工智能系统。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">据此普强提出发展一种可重复复用的机制，将这个机制灵活的应用到每一个客户业务场景上，当这个机制应用到特定场景上时，会按已成功的案例，做梳理业务逻辑并同时在客户内的私有云上采集数据，再用成功案例的深度学习神经网络，机器学习算法架构来训练、测试、验证模型，最终上线运行业务逻辑，提升业务价值及效益。这样的机制主要包含两项重要元素，方法论和计算技术框架：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><ul style="box-sizing: border-box; margin-bottom: 1rem;" class=" list-paddingleft-2"><li><p>方法论：对行业及业务场景整理出流程和规则，并按此流程和规则采集积累海量的数据。</p></li><li><p>计算技术框架：按实际应用场景，建立算法框架，框架是由各类已验证后的神经网络和机器学习算法构成的体系，对每一应用场景作全框架计算测试评估，研判出最优的神经网络架构和机器学习算法，并同时调试参数和配置。</p></li></ul><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">普强在金融及相关领域，积累十年以上的人工智能行业落地经验，专注于垂直领域，归纳成功的案例、相关的业务流程规则和算法算力需求，建立起一套完整的机制。随着客户的业务需求变化和成功案例积累，不断的扩充加强优化此机制，作快速的迭代。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span style="box-sizing: border-box; font-weight: 700;">五、成功案例分享</span></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">A保险公司为名列世界500强的保险公司（在本文开头已有提及），普强将语义分析机制应用在A保险公司的电销业务里，项目一期应用在A保险公司两个主要的业务区：BJ市和TJ市。对大约250万的客户电销通话录音（约400万通录音）作落地实施，其中包括了下列的步骤：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><ol style="box-sizing: border-box; margin-bottom: 1rem;" class=" list-paddingleft-2"><li><p>业务梳理：与客户业务人员交流，以对客户的业务做深度的了解，与普强机制框架对接。</p></li><li><p>分析流程建立：分析客户业务，建立流程，优化流程。</p></li><li><p>客户特征筛选：基于普强的业务成功案例，使用大数据分析，抽取潜在具有购买意愿客户特征。</p></li><li><p>成交相关度计算：经由普强大数据分析框架计算客户特征与成交的相关度，排序客户特征的优先顺序。</p></li><li><p>模型建模/训练：普强计算技术框架对最优最先进的神经网络架构和机器学习算法，作架构和算法评估，测试不同架构和算法的效益优劣，及计算资源需求以及是否能达到客户的时效要求等工作，最终推荐最优的架构/算法。</p></li><li><p>测试：使用海量的数据不断的测试，并调优参数，达到准确率、召回率等测试标准的要求，并依照业务模式计算相对的业务效益。</p></li><li><p>验证：实际推送普强业务流程算法推荐的潜在客户，验证成交率。</p></li><li><p>上线：将最终验证通过的整体机制上线，进入实际业务运行。</p></li></ol><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">与使用普强机制前业务情况对比的成效如下：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><ul style="box-sizing: border-box; margin-bottom: 1rem;" class=" list-paddingleft-2"><li><p>精准的推荐占总量约 15% 的潜在有购买意愿的优质客户。</p></li><li><p>推荐的 15% 的客户覆盖了 90% 的业绩。</p></li><li><p>节省了 80%+ 的电销电话，人员时间。</p></li><li><p>并减少了对没有意向购买客户的干扰。</p></li><li><p>确定了潜在购买客户的特征，作话术优化的依据，有定向的与客户对话以确认是否是有所确定的特征。</p></li><li><p>发掘了电销流程的缺失：发现高购买意向客户的跟踪力度不及时或遗漏的情况，建立追踪系统及时找回遗漏的潜在客户并跟进。</p></li></ul><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;"><span style="box-sizing: border-box; font-weight: 700;">六、结语</span></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">随着计算力和云存储容量的大幅提升，海量数据的收集，使得以往不能突破的人工智能问题均得到突破：如语音识别、图像识别、语义理解等领域。借着这些突破，许多商业场景都能应用这些最新的人工智能突破，而产生实际的商业效应。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">&nbsp;</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;">本文中叙述了语音识别和语义理解在特定的垂直领域中的应用，并详述案例和其应用的效益。此种效应随着科技的进步和突破，必能扩及更多的场景和商业应用。本文中所述的方法论和技术计算框架也必定会不断的迭代更新和扩充，带给实际的业务更多的效益。</p></div><div data-v-cf2cf770="" class="footerbtn" style="box-sizing: border-box; text-align: right; margin: 20px 0px;"><span data-v-cf2cf770="" class="btn" style="box-sizing: border-box; display: inline-block; text-align: center; vertical-align: middle; cursor: pointer; user-select: none; border: 1px solid transparent; padding: 0.375rem 1rem; font-size: 1rem; line-height: 1.5; border-radius: 0.25rem; color: rgb(23, 24, 25);">返回&gt;&gt;</span></div></div></div></div></div><div data-v-ff274d82="" class="footer" style="box-sizing: border-box; background-image: url(" color:="" font-family:="" pingfang="" letter-spacing:="" text-align:="" white-space:="" background-color:=""><footer data-v-ff274d82="" class="footer footer--06" style="box-sizing: border-box; background-position: 50% center; background-repeat: no-repeat; background-size: cover; background-image: url("><div data-v-ff274d82="" class="footer__main_box--06" style="box-sizing: border-box; padding: 35px 0px 30px; border-bottom: 1px solid rgba(188, 198, 208, 0.4);"><div data-v-ff274d82="" class="container footer__container" style="box-sizing: border-box; margin-left: auto; margin-right: auto; padding-left: 0.9375rem; padding-right: 0.9375rem; max-width: 1140px; position: relative;"><div data-v-ff274d82="" class="footer__left_box--06" style="box-sizing: border-box; float: left;"></div></div></div></footer></div><p><br/></p>', '0', '314', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '20', '', '', '1589163536', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('623', '普强新获AI领域3项专利授权', '普强', '../uploads/20200511/20200511102136_198.jpg', '', '1', '', '0', '1', '<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:="">近日，国家知识产权局通过并授权普强信息技术（北京）有限公司三项实用新型专利，这三项专利均已在普强相关产品中得到充分应用。目前，普强还有多项语音领域相关专利正在实审中。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589163691636310.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; width: 904px; height: 493px;" width="904" height="493"/></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:="">本次被授权的3项实用新型专利，一项涉及语音识别的后处理技术，在现有基础上能有效提高语音识别的准确率；一项涉及基频的端点检测及计算方法，可以广泛应用于语音信号处理领域；一项涉及英语口语的自动打分，对发音质量有更强的区分性，能使得到的分数分布更加合理。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:=""><img src="/kb_006/ueditor/ueditor/php/upload/image/20200511/1589163691336551.jpg" style="box-sizing: border-box; border: 0px; vertical-align: middle; width: 912px; height: 535px;" width="912" height="535"/></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(36, 37, 38); font-family: " pingfang="" letter-spacing:="" white-space:="" background-color:="">普强自成立以来，始终把自主研发与科技创新放在第一位，接下来公司将继续加大在人工智能、语音识别、自然语言处理、语音大数据等领域的研发投入，加快“产+学+研”的有机融合，扩大客户群体，推动智能语音技术稳步向前发展。</p><p><br/></p>', '0', '314', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '13', '', '', '1589163728', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('626', '联系方式', '', '', '', '1', '', '99', '0', '<div class="mode clearfix"><ul class="mode_left list-paddingleft-2"><li><p><span class="popq"></span><em>普强信息技术（北京）有限公司</em></p></li><li><p><span class="pop"></span><em>网站：www.pachira.cn </em></p></li><li><p><span class="email"></span><em>邮 &nbsp; &nbsp;箱：BD@pachiratech.com &nbsp; &nbsp;</em></p></li><li><p><span class="dh"></span><em>电 &nbsp; &nbsp;话：010-82306399-7701</em></p></li><li><p><span class="dz"></span><em>地 &nbsp; &nbsp;址：北京市海淀区永丰路与北清路交汇四维图新大厦F座2层&nbsp;&nbsp;</em></p></li></ul></div>', '0', '309', '2016-12-22', '', '', '', 'info', '', '', '0', '0', '', '', '1589163795', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('690', '荣誉称号', '', '../uploads/20200511/20200511084120_312.png', '', '1', '', '0', '0', '', '0', '362', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '0', '', '', '1589157680', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('691', '软件著作', '', '../uploads/20200511/20200511084404_553.jpg', '', '1', '', '0', '0', '', '0', '362', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '0', '', '', '1589157844', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('692', '专利证书', '', '../uploads/20200511/20200511084920_967.jpg', '', '1', '', '0', '0', '', '0', '362', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '0', '', '', '1589158160', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('693', '荣誉称号', '', '../uploads/20200511/20200511084637_725.png', '', '1', '', '0', '0', '', '0', '362', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '0', '', '', '1589157997', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('694', '荣誉称号', '', '../uploads/20200511/20200511084659_169.png', '', '1', '', '0', '0', '', '0', '362', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '0', '', '', '1589158019', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('695', '荣誉称号', '', '../uploads/20200511/20200511084714_986.png', '', '1', '', '0', '0', '', '0', '362', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '0', '', '', '1589158034', '0', '', '', '', '');
INSERT INTO `6_wd_news` VALUES ('696', '荣誉称号', '', '../uploads/20200511/20200511084730_181.png', '', '1', '', '0', '0', '', '0', '362', '2020-05-07 01:05', '', '', '', 'info', '', '', '0', '0', '', '', '1589158050', '0', '', '', '', '');

-- ----------------------------
-- Records for `6_wd_system`
-- ----------------------------
INSERT INTO `6_wd_system` VALUES ('1', 'pachira普强', '普强于2009年在美国硅谷成立全球研发中心，主要从事智能语音和语言技术研究2010年设立中国运营公司，是金融科技创新和智能汽车AI服务提供商,在硅谷和中关村、上海、深圳、南京均建设有技术研发中心', '智能语音,普强，语言技术研究、金融科技创新，智能汽车AI服务提供商', '../uploads/20200508/20200508151234_752.png', '1', 'adadf@163.com', '010-82306399-7701', '北京市海淀区永丰路与北清路交汇四维图新大厦F座2层', 'www.demo.a.kbyun.com', '', 'BD@pachiratech.com', '京ICP备12021069号', '2', 'COPYRIGHT © 2020 普强信息技术（北京）有限公司 ALL RIGHTS RESERVED', '网站维护中临时关闭...', '../uploads/20200508/20200508151026_478.png');

