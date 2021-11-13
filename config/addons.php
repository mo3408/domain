<?php

return [
    'autoload' => false,
    'hooks' => [
        'app_init' => [
            0 => 'cloudstore',
        ],
        'upload_init' => [
            0 => 'cloudstore',
        ],
        'admin_login_init' => [
            0 => 'loginbg',
        ],
    ],
    'route' => [
        0 => [
            'addon' => 'cloudstore',
            'domain' => 'http://XXX',
            'rule' => [
            ],
        ],
    ],
    'service' => [
        0 => 'addons\\crontab\\service\\CommandService',
    ],
];