define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'domain/index',//显示
                    add_url: 'domain/add',//增加
                    edit_url: 'domain/edit',//编辑
                    del_url: 'domain/del',//删除
                    multi_url: 'domain/multi',
                    dragsort_url: '',
                    table: 'domain',
                }
            });

            var table = $("#table");
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                escape: false,
                pk: 'id',
                sortName: 'weigh',
                pagination: false,
                commonSearch: true,
                search: true,
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'project', title: __('Project'),width:'400',align:'left'},
                        {field: 'affairs', title: __('Affairs'),width:'100'},
                        {field: 'domain', title: __('Domain'),align:'left'},
                        {field: 'dotype', title: __('Dotype'), formatter: Table.api.formatter.status,  width:'240',},
                        {field: 'count', title: __('Counts'),align:'left'},
                        // {field: 'ftpuser', title: __('Ftpuser')},
                        // {field: 'ftpassd', title: __('Ftpassd')},
                        // {field: 'databaset', title: __('Databaset')},
                        // {field: 'datauser', title: __('Datauser')},
                        // {field: 'dataname', title: __('Dataname')},
                        // {field: 'datapassword', title: __('Datapassword')},
                        {field: 'time', title: __('Time'),
                         width:'350',
                        },
                        {field: 'lasttime', title: __('Lasttime'),
                        
                         },
                         {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate,  width:'200',
                            buttons:[
                                {
                                    name: 'detail',
                                    title: __('备份数据库'),//标题
                                    classname: 'btn btn-info btn-xs btn-list btn-dialog',//样式
                                    icon: 'fa fa-magic',//图标
                                    url: 'domain/daimport'},//跳转地址
                                {
                                    name: 'details',
                                 
                                    title: __('备份网站'),
                                    classname: 'btn btn-xs btn-primary btn-dialog',
                                    icon: 'fa fa-folder-o',
                                    url: 'domain/daexport'},
                         
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