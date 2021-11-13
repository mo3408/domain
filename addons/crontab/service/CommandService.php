<?php


namespace addons\crontab\service;


use addons\crontab\command\Autotask;
use think\Service;

class CommandService extends Service
{
    public function boot()
    {
        $this->commands([
            Autotask::class,
        ]);
    }
}