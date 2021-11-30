<?php


namespace app\model;


use ruhua\bases\BaseModel;
use ruhua\exceptions\BaseException;

class Banner extends BaseModel
{
    public function img(){
        return $this->belongsTo("Image",'img_id')->field(['url','id']);
    }
    public function store(){
        return $this->belongsTo("Store",'store_id')->field(['name','id']);
    }
    public function addBanner($data){
        $updata = [
          "img_id"=>$data['img_id'],
          "name"=>$data['name'],
          "store_id"=>$data['store_id'],
        ];
        $result =self::create($updata);
        if(!$result){
            throw new BaseException(["msg"=>'添加失败']);
        }
        return $result;
    }
    public function upBanner($data){
        $updata = [
            "id"=>$data['id'],
            "img_id"=>$data['img_id'],
            "name"=>$data['name'],
        ];
        $result =self::update($updata);
        if(!$result){
            throw new BaseException(["msg"=>'修改失败']);
        }
        return $result;
    }
}