

import {is_w7_h5,is_w7_xcx} from '@/common/config.js'
const siteinfo = require('@/siteinfo.js'); 
export default {	
	xcx_login() {
		console.log("xcx_login");
		const that = this;
		return uni.login({
				provider: 'weixin',
			}).then(loginRes=>{ 
				let data = {
					code: loginRes[1].code
				};
				if (is_w7_xcx) {
					data = {
						code: loginRes[1].code,
						ucid: siteinfo.uniacid
					};
				}
				return user.get_xcx_token(data).then(res => { 
					return res;
				});
			}) 
	},
	/**
	 * 1、用户打开客户端以后，h5_login()让用户跳转到：api域名/weixin/gzh_code
	 * 2、api端记录访问的页面路径，结合appid和密钥，生成一url，并跳转，此时出现用户授权。
	 * 3、用户同意授权。
	 * 4、继续在api端，用授权的参数，向微信服务器申请openid。
     * 5、在api端写入客户端的缓存token，因为api和客户端是同一个站点下 a.com和a.com/h5,所以可以在后端写前端缓存
	 * 6、跳转回之前记录的页面路径
	 */
	h5_login() {
		console.log("h5_login");
		const that=this
		var ua = navigator.userAgent.toLowerCase();
		var isWeixin = ua.indexOf('micromessenger') != -1;
		if (!isWeixin && this.merge_mode != 2) {
			console.log('非微信浏览器打开，登陆方式为开放平台关联登录，暂不登陆，请前往微信浏览器打开');
			return;
		}  		
		
		//if (this.merge_mode != 2) {
			console.log('微信浏览器打开，登陆方式为公众号'); 		
		//}
		let end_url = this.fun_site_url()
		window.location.href = end_url;
	},
	//设置跳转网址
	fun_site_url(){		
		var site_url = window.location.href;
		var site_root=""
		var strs = [];
		var obj={}
		if (site_url.indexOf('?') != -1) { 
			var url_one = site_url.split('?'); 			
			var url_two = url_one[1].split('&');
			for(let i of url_two){ 
				const j= i.split('=')
				obj[j[0]] = j[1]
			} 
			site_root=url_one[0].split('h5/')[0]; 		
		}else{
			site_root=site_url.split('h5/')[0];
		}
		console.log("obj",obj);  
		console.log("jump",site_root + 'weixin/gzh_code');
		let end_url = site_root + 'weixin/gzh_code';
		if (is_w7_h5) { 	
			end_url = site_root + 'index.php/weixin/gzh_code?ucid=' + obj.ucid; ;
		} 
		return end_url;		
	},
	
	//请求返回401后再次登录一次
	aging_login(){
		const aging=uni.getStorageSync("aging_request");
		console.log("aging:",aging);
		if(aging>0){
			return;
		}
		console.log("尝试再次登录:")
		uni.setStorageSync("aging_request",1)			
		// #ifdef H5
			this.h5_login() 
		// #endif	
	},

}
