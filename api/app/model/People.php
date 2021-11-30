<?php


namespace app\model;


use ruhua\bases\BaseModel;

class People extends BaseModel
{
    public function img(){
        return $this->belongsTo('Image','img_id')->field(['id','url']);
    }
    public static function addPeople($data){
        $form=[
          "s_id"=>$data["s_id"],
          "img_id"=>$data["img_id"],
          "name"=>$data["name"],
          "describe"=>$data["describe"],
        ];
        $res = self::create($form);
        return $res;
    }
}