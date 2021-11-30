<?php


namespace app\model;


use ruhua\bases\BaseModel;
use ruhua\exceptions\BaseException;
use think\model\concern\SoftDelete;
use app\model\ScriptHort as ScripTagsModel;
use app\model\People as PeopleModel;
class Script extends BaseModel
{
    use SoftDelete;
    protected $type=[
        'type'=>'json'
    ];
    public function img(){
        return $this->belongsTo("Image",'img_id')->field("id,url");
    }
    public function jobs(){
        return $this->hasMany("People",'s_id');
    }
    public function stores(){
        return $this->belongsTo("Store",'store_id')->field("id,name");
    }
    public function tags(){
        return $this->belongsToMany('Tags','ScriptTags','t_id','s_id');
    }

    public function addScript($data){
        $form=[
         'title'=>$data['title'],
         'img_id'=>$data['img_id'],
         'describe'=>$data['describe'],
         'time'=>$data['time'],
         'type'=>$data['type'],
         'score'=>$data['score'],
         'store_id'=>$data['store_id']
        ];
        $result = self::create($form);
        foreach ($data['job_id'] as $key=>$value){ //循环为剧本添加角色
           $peo= PeopleModel::update([
                'id'=>$value,
                's_id'=>$result['id']
            ]);
            if(!$peo){
                throw new BaseException(['msg'=>'角色添加失败']);
            }
        }
        return $result;
    }
    public function upScript($data){
        $form=[
            "id"=>$data['id'],
            'title'=>$data['title'],
            'img_id'=>$data['img_id'],
            'describe'=>$data['describe'],
            'time'=>$data['time'],
            'score'=>$data['score'],
            'store_id'=>$data['store_id'],
            'type'=>$data['type']
        ];
       // $this->updataTomany($data['id']);
        $result = self::update($form);
        return $result;
    }

    /**
     * 修改多对多关联中的信息
     * @param $id  修改剧本id
     * @param $tags 关联的类型id
     * @param $store 关联的店铺id
     * @throws BaseException
     */
    protected function updataTomany($id,$store=0){
        $form=[];
        foreach ($tags as $key=>$vo){
            $form[]=['s_id'=>$id,'t_id'=>$vo];
        }
        $addTags= (new ScripTagsModel())->saveAll($form);
        if(!$addTags){
            throw  new BaseException(['msg'=>'剧本类型保存出错']);
        }
    }


}