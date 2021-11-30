import {Api_url} from './config.js'
import Vue from 'vue'

class XcxToken {
	
	constructor() {
		let Api_urls = Api_url.Api_url;
		this.tokenUrl = Api_urls + 'user/xcx_login';
		this.verifyUrl = Api_urls + 'user/verify_token';
		this.getInfo = Api_urls + 'user/get_info';
	}
	
	//验证token
	_veirfyFromServer(token) {
		var that = this;
		return new Promise((cback, reject) => {
		uni.request({
			url: that.verifyUrl,
			method: 'GET',
			header: {
				token: token
			},
			success: function(res) {
				console.log("sfsdf",res.data.data)
				var valid = res.data.data;
				if (!valid) {
					that.getTokenFromServer();
				}
			}
		})
		cback(1)//只是返回值，这个“1”没有用，起返回的作用
		})
	}
	//获取Token
	getTokenFromServer() {
		var that = this;
		var invite =uni.getStorageSync("invite_code");
		console.log('x1',invite)
		return new Promise((cback, reject) => {
			uni.login({
				provider: 'weixin',
				success: function(res) {
					console.log('login:',res.code)
					uni.request({
						url: that.tokenUrl,
						method: 'GET',
						data: {
							code: res.code,
							invite_code:invite
						},
						success: function(res) {
							if(res.data.status==200){
								uni.setStorageSync('token',res.data.data.token);
								console.log("token",res.data.data.token)
								cback(res.data.data.token)
							}
						}
					})
				}
			})
		})
	}
}
export {
	XcxToken
};


