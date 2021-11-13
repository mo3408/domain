<?php

namespace app\admin\model;

use app\common\library\Token;
use app\common\model\MoneyLog;
use app\common\model\BaseModel;
use app\common\model\ScoreLog;

class Domain extends BaseModel
{
	protected $name = 'domain';
    public function group()
    {
        return $this->belongsTo('domain', 'id,project,affairs,domain')->bind('LEFT');
    }
}