<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/11/22 0022
 * Time: 11:16
 */

namespace ruhua\utils;


use ruhua\model\SysConfig;

class System
{
    public function getValue($key){
        $value=SysConfig::where('key',$key)->value('value');
        return $value;
    }
}