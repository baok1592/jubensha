<template>
	<uni-popup ref="popup" type="bottom">
		<view class="popup-content d-flex flex-column">
			<view class="d-flex justify-content-end">
				<image src="/static/images/common/clousex-big.png" class="close_btn" @tap="close"></image>
			</view>
			<view class="d-flex flex-fill flex-column justify-content-between">
				<view class="d-flex flex-column">
					<view class="font-size-extra-lg font-weight-bold text-color-base mb-30">欢迎登陆 -外卖点餐</view>
					<view class="font-size-base text-color-assist">登录后消费可获取积分，享受更好的服务体验</view>
				</view>
				<view class="d-flex flex-column">
					<!-- #ifdef MP-WEIXIN -->
						<button  type="primary" class="w-100 font-size-lg mb-30"
						 style="font-size: 30rpx;height: 45px;line-height: 45px;" 
						 size="mini"@click="xcx"> 获取头像昵称 </button>
					<!-- #endif -->
					
					<!-- #ifdef H5 -->
						<button type="primary" class="w-100 font-size-lg mb-30" 
						@click="h5">微信一键登陆</button>
					<!-- #endif -->
					
					<view class="text-center mb-30 font-size-sm text-color-assist">
						点击登陆 -外卖点餐，即表示已阅读并同意
						<!-- #ifdef MP-WEIXIN -->
						<font class="text-color-primary">《 隐私政策》</font>
						<!-- #endif -->
						<!-- #ifdef H5 -->
						<font class="text-color-primary">《 隐私政策》</font>
						<!-- #endif -->
						<!-- #ifdef MP-ALIPAY -->
						<text class="text-color-primary">《 隐私政策》</text>
						<!-- #endif -->
					</view>
					<!-- <view class="text-center font-primary font-size-sm 
					text-color-primary">《服务指南》</view> -->
				</view>
			</view>
		</view>
	</uni-popup>
</template>

<script>
	import uniPopup from '@/components/uni-popup/uni-popup.vue';
	import {
		mapMutations
	} from 'vuex';
	import user from '@/api/user.js';
	import {
		Api_url
	} from '../../../common/config.js'

	export default {
		name: 'LoginPopup',
		components: {
			uniPopup
		},
		data() {
			return {
				canIUseGetUserProfile: false,
				login: false
			}
		},
		props: {},
		created() {
			 
		},
		methods: {
			xcx(e) {
				// #ifdef MP-WEIXIN	 
				const that = this
				this.login = false
				wx.getUserProfile({
					desc: '用于完善会员资料', // 声明获取用户个人信息后的用途，后续会展示在弹窗中，请谨慎填写
					success: (res) => { 
						if (res.userInfo) { 
							const user = res.userInfo						
							that.$emit('getInfo',user); 
						}
					}
				})
				// #endif	
			},
			h5(e) {
				const that = this
				console.log("h5 请求是否授权头像:",e);
				// #ifdef H5 
					if (e.target.errMsg !== 'getUserInfo:ok') {
						uni.showModal({
							title: '提示',
							content: '您已取消了授权，请重新授权登录',
							showCancel: false
						});
						return;
					} 
					uni.getUserInfo({
						success: data => {
							console.log("h5-头像数据:",e);
							let user = data.userInfo							
							that.$emit('getInfo',user); 
						}
					}) 
				// #endif 
			},
			open() {
				this.$refs['popup'].open();
			},
			close() {
				this.$refs['popup'].close();
			},  
		}
	};
</script>

<style lang="scss" scoped>
	.popup-content {
		background-color: #ffffff;
		border-radius: 24rpx 24rpx 0 0;
		height: 50vh;
		padding: 50rpx 40rpx;
	}

	.close_btn {
		width: 40rpx;
		height: 40rpx;
	}
</style>
