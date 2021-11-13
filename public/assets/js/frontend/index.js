define(['jquery', 'bootstrap', 'frontend', 'table', 'form'], function ($, undefined, frontend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'index/index',//显示
                    add_url: 'index/add',//增加
                    edit_url: 'index/edit',//编辑
                    del_url: 'index/del',//删除
                    multi_url: 'index/multi',
                    dragsort_url: '',
                    table: 'domain',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                escape: false,
                pk: 'id',
                sortName: 'weigh',
                pagination: false,
                commonSearch: false,
                search: true,
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'project', title: __('Project'),width:'400'},
                        {field: 'affairs', title: __('Affairs')},
                        {field: 'domain', title: __('Domain')},
                        {field: 'dotype', title: __('Dotype'), formatter: Table.api.formatter.status,  width:'240',},
                        {field: 'ftp', title: __('Ftp')},
                        {field: 'ftpuser', title: __('Ftpuser')},
                        {field: 'ftpassd', title: __('Ftpassd')},
                        {field: 'databaset', title: __('Databaset')},
                        {field: 'datauser', title: __('Datauser')},
                        {field: 'dataname', title: __('Dataname')},
                        {field: 'datapassword', title: __('Datapassword')},
                        {field: 'time', title: __('Time'),
                         width:'350',
                        },
                        {field: 'lasttime', title: __('Lasttime'),
                        
                         },
                         {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate,  width:'200',
                            buttons:[
                                {
                                    name: 'detail',//名   
                                    title: __('备份网站'),//标题
                                    classname: 'btn btn-info btn-xs btn-list btn-dialog',//样式
                                    icon: 'fa fa-magic',//图标
                                    url: 'index/daimport'},//跳转地址
                                {
                                    name: 'detail',
                                 
                                    title: __('备份数据库'),
                                    classname: 'btn btn-xs btn-primary btn-dialog',
                                    icon: 'fa fa-folder-o',
                                    url: 'index/daexport'        }
                            ], formatter: Table.api.formatter.operate}
                  
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});