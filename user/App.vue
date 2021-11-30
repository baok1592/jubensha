<script>
	import Vue from 'vue'
	import http from '@/common/http/axios.js';
	import loginModel from '@/common/login.js';
	import {
		XcxToken
	} from '@/common/xcx_token.js'
	import systemModel from '@/api/system.js';
	var xcxtoken = new XcxToken();
	export default {
		globalData: {
			storeId: 15,
			sys_store: []
		},
		onLaunch: function(o) {
			console.log("o",o)
			// #ifdef H5
				this.get_href()
			// #endif 
			console.log('App Launch')
			// #ifdef MP-WEIXIN
				this.verify(); //小程序获取token 
			// #endif
		},
		onShow: function() {
			console.log('App Show')
			this.globalData.sys_store = this.get_sys_store();
		},
		onHide: function() {
			console.log('App Hide')
		},
		methods: {
			//公众号
			get_href(){
				console.log("H5")
				var site_url = window.location.href;
				var site_root=""
				var strs = [];
				var obj={}
				if(site_url.indexOf('?')==-1){	//如果没有携带参数直接登陆，否则保存参数之后再登陆
				console.log("H5-1")
					let token = uni.getStorageSync('token');	
					if(token){			
						console.log("H5-2")
						this.check_token()	//检查token是否过期
					}else{
						console.log("H5-3")
						loginModel.h5_login() 
					} 
				}else{	
					console.log("H5-4")
					var url_one = site_url.split('?');
					var url_two = url_one[1].split('&');
					for(let i of url_two){ 
						const j= i.split('=')
						obj[j[0]] = j[1]
					} 
					console.log("obj",obj)
					this.setStorage(obj)//调用下面的setStorage函数
				}
			},
			setStorage(data){
				if(data.code){
					console.log('2222')
					http.get('weixin/get_gzh_token',data).then(res=>{
						uni.setStorageSync('token',res.data.token)
					})
				}else{
					console.log('1111')
					uni.setStorageSync('query',data)
					// #ifdef H5
						let token = uni.getStorageSync('token');
						if(token){
							this.check_token()
						}else{
							loginModel.h5_login() 
						}
					// #endif 	 
				}
			},
			check_token(){
				console.log("check_token")
				const that = this;
				http.get('user/verify_token').then(res => {
					console.log("check_token1",res)
					if (res.data == false) {
						console.log("check_token2")
						that.login();
						return;
					} 
				});
			},
			login(){
				// #ifdef H5
					loginModel.h5_login() 
				// #endif 	 
			},
			get_sys_store() {
				return systemModel.getSystemStore().then(res => {
					return res;
				})
			},
			//初始化登陆
			verify() {  
				var that = this;
				var token = uni.getStorageSync('token'); //获取缓存
				console.log("111")
				if (!token) {
					console.log("111")
					this.globalData.sys_store = xcxtoken.getTokenFromServer().then(res=>{
					return systemModel.getSystemStore()
					})				
				} else {
					console.log("222")//验证token是否过期，过期调用.getTokenFromServer函数获取
					this.globalData.sys_store = xcxtoken._veirfyFromServer(token).then(res=>{
						return systemModel.getSystemStore() 
					}); 
				}
			}
		}
	}
</script>

<style lang="scss">
	/*每个页面公共css */
	@import "uview-ui/index.scss";
	@import './static/bootstrap.min.css';

	.qy-page {
		min-height: 100vh;
		background-color: #171824;
	}

	.fs-32 {
		font-size: 32rpx;
	}
</style>
