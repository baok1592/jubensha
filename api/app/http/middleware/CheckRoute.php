<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2021/4/20 0020
 * Time: 13:18
 */

namespace app\http\middleware;


use think\facade\Log;
use think\facade\Request;
use app\model\AuthRule as AuthRouleModel;

class CheckRoute
{
    public function handle($request, \Closure $next)
    {
        $route=Request::url();
        if(strchr($route,'?'))
            $route=substr($route,0,strripos($route,'?'));
        $auth=AuthRouleModel::where(['name'=>$route])->find();
        if(!$auth)
            AuthRouleModel::create(['name'=>$route]);
        return $next($request);

        return app('json')->fail('没有权限');
    }
}