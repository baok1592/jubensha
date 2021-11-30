<?php


namespace app\model;


use ruhua\bases\BaseModel;
use ruhua\exceptions\BaseException;
use think\model\concern\SoftDelete;

class Admin extends BaseModel
{
    use SoftDelete;
    public static function createAdmin($data){
        $user =self::where("username",$data["username"])->find();
        if($user){
            throw new BaseException(['msg'=>'该用户名已存在']);
        }
        $data['password'] = password($data['password']);
        $res =self::create($data);
        return $res;
    }
    public static function updateAdmin($data){
        $user =self::where("username",$data["username"])->find();
        if($user&&$user['id']!=$data['id']){
            throw new BaseException(['msg'=>'该用户名已存在']);
        }
        $form=[
          "id"=>$data["id"],
          "username"=>$data["username"],
          "nickname"=>$data["nickname"]
        ];
        $res =self::update($form);
        return $res;
    }

}