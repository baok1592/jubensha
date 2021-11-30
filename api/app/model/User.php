<?php


namespace app\model;


use ruhua\bases\BaseModel;

class User extends BaseModel
{
    protected $hidden=['openid','session_key','create_time','updata_time'];

    public function getNameAttr($value){
        return base64_decode($value);
    }
    public function hort(){
        return $this->belongsToMany('Script','ScriptHort','s_id','u_id');
    }
}