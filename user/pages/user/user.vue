<template>
	<view class="user_index p-3">
		<view class="user-info  p-3" style="display: flex;">
			<view style="width: 100rpx;">
				<u-image :src="user.avatarUrl" width="100rpx" height="100rpx" shape="circle"
					v-if="user.avatarUrl"></u-image>
				<u-image :src="img" width="100rpx" height="100rpx" shape="circle" v-else></u-image>
			</view>
			<view class="text-white fw-bold nickname">
				<view v-if="user.nickName">{{user.nickName}}</view>
				<view v-else>昵称</view>
				<view>
					<u-icon name="account-fill" color="#ffcd03"></u-icon><text style="color:#e2e2e2;">普通用户</text>
				</view>
			</view>
			<u-button type="primary" style="font-size: 30rpx;height: 45px;line-height: 45px;margin-left: 20px;"
				size="mini" @click="xcx" v-if="login==false"> 获取头像昵称 </u-button>
		</view>
		<view class="mt-3">
			<u-cell-group :border="false">
				<u-cell-item icon="heart" :title-style="class1"  :icon-style="icon_class" title="我的关注" @click="jump_to_col()" bg-color="#171824"></u-cell-item>
				<u-cell-item icon="home" :title-style="class1" :icon-style="icon_class" :title="'店铺名称：'+ shop.name" :arrow="false" bg-color="#171824"></u-cell-item>
				<u-cell-item icon="phone" :title-style="class1" :icon-style="icon_class" :title="'店铺电话:' + shop.mobile" :arrow="false" bg-color="#171824"></u-cell-item>
				<u-cell-item icon="map" :title-style="class1" :icon-style="icon_class" :title="'详细地址:' + shop.address" :arrow="false" bg-color="#171824" @click="jump_to_map()"></u-cell-item>
			</u-cell-group>
		</view>
		<view class="bottom">
			<u-icon name="grid" color="#FFC200"></u-icon><text style="color: #FFC200;">万变剧本杀</text>
		</view>
	</view>
</template>

<script>
	import {Api_url,is_w7_h5} from '../../common/config.js'
	export default {
		data() {
			return {
				class1:{
					'color': '#cfcfcf',
				},
				icon_class:{
					'color': '#dab706'
				},
				img: require('@/common/imgs/123.jpg'),
				user: {
					avatarUrl: "",
					city: "",
					country: "",
					gender: 3,
					language: "",
					nickName: "",
				},
				shop: {},
				login:false
			}
		},
		onLoad() {
			this.getInformation()
			this.get_shop()
		},
		methods: {
			//获取店铺信息
			get_shop() {
				getApp().globalData.sys_store.then(res => {
					for (let k in res.data) {
						if (getApp().globalData.storeId == res.data[k].id) {
							this.shop = res.data[k]
						}
					}
				})
			},
			//获取小程序登录信息
			getInformation() {
				var that = this
				this.$http.get(this.$api.user.getInfo).then(res => {
					if (res.status == 200 && res.data.name != "") {
						that.login = true
						console.log("123",res)
						uni.setStorageSync("user",res.data)
						that.user.nickName = res.data.name
						that.user.avatarUrl = res.data.headpic
					}
				})
			},
			//跳转收藏页
			jump_to_col() {
				uni.navigateTo({
					url: '/pages/user/collect/collection'
				})
			},
			//跳转地图页
			jump_to_map() {
				console.log("shop:",this.shop)
				uni.navigateTo({
					url: '/pages/user/collect/map?long='+this.shop.long + '&lat=' + this.shop.lat,
				})
			},
			xcx() {
				// #ifdef MP-WEIXIN	 
				const that = this
				this.login = false
				wx.getUserProfile({
					desc: '用于完善会员资料', // 声明获取用户个人信息后的用途，后续会展示在弹窗中，请谨慎填写
					success: (res) => {
						if (res.userInfo) {
							const user = res.userInfo
							this.user = res.userInfo
							that.UpUser(user, res.encryptedData, res.iv)
							
						}
					}
				})
				// #endif	
				// #ifdef H5
					let host =window.location.href;
					console.log('ee',host)
					let  list = host.split('h5');
					console.log(list)
					let end_url = list[0] + '/weixin/gzh_upinfo';
					if (is_w7_h5) { 	
						end_url = list[0] + '/index.php/weixin/gzh_code?ucid=' + obj.ucid; ;
					} 
					window.location.href=end_url;
				// #endif 	
			},
			//跟新头像信息
			UpUser(user, keys, iv) {
				const that = this
				uni.request({
					url: Api_url.Api_url + 'user/xcx_update',
					method: 'POST',
					data: {
						nickname: user.nickName,
						headpic: user.avatarUrl,
						keys,
						iv
					},
					header: {
						token: uni.getStorageSync("token")
					},
					success: function(res) {
						that.getInformation()
					},
				});
			},
			// 下拉刷新
			onPullDownRefresh() {
				console.log('refresh');
				this.getInformation()
				this.get_shop()
				setTimeout(function() {
					uni.stopPullDownRefresh();
				}, 1000);
			}
		}
	}
</script>

<style scoped>
		
	.user_index{
		background-color: #171824;
		min-height: 100vh;
	}
	.user-info {
		background-image: linear-gradient(to right bottom, #360570, #0C0874);
		height: 180rpx;
		width: 100%;
		border-radius: 15rpx 15rpx 0px 0px;
	}
	.user-man {
		height: 40rpx;
		width: 40rpx;
		background-color: #2979ff;
		position: absolute;
		right: -40rpx;
		top: 0rpx;
	}

	.user-woman {
		height: 40rpx;
		width: 40rpx;
		background-color: #DC37B8;
		position: absolute;
		right: -40rpx;
		top: 0rpx;
	}

	.nickname {
		display: flex;
		flex-direction: column;
		padding: 5px 0px 0px 15px;
	}

	.map {
		width: 92vw;
		height: 200px;
	}

	.bottom {
		display: flex;
		justify-content: center;
		margin-top: 40px;
		color: #c8c9cc;
	}
</style>
