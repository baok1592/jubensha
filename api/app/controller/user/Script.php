<?php


namespace app\controller\user;


use app\model\Script as ScriptModel;
use ruhua\bases\BaseController;
use app\model\ScriptHort;
use ruhua\services\TokenService;

class Script extends BaseController
{
    public function getScript($id,$tag='wx'){
        $res['script'] = ScriptModel::with(['img','jobs.img','stores'])->where('id',$id)->find();
        $res['script']->hidden(['img_id'])->toArray();
        if($tag=='wx'){
            $uid= TokenService::getCurrentUid();
            $res['like']=ScriptHort::where('s_id',$id)->where('u_id',$uid)->find();
            if($res['like']){
                $res['like']->visible(['id']);
            }
        }
        return app('json')->go($res);
    }

}