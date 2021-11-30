<?php

/**
 * 如花商城系统
 * =========================================================
 * 官方网址：http://www.ruhuashop.com
 * QQ 交流群：728615087
 * Version：1.2.0
 */

namespace app\http\middleware;

//中间件，验证token，检测权限


use ruhua\services\TokenService;


class CheckUser
{
    public function handle($request, \Closure $next)
    {
        //return $next($request);
        $aid = TokenService::getCurrentTokenVar('uid');
        if ($aid) {
            return $next($request);
        }
        return app('json')->fail('没有权限');

    }
}