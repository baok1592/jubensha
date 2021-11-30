<template>
	<view class="qy-page bkcolor">
		<u-dropdown v-if="storeCount > 1" inactive-color="#dcdcdc" active-color="#d52a00">
			<u-dropdown-item v-model="value1" :title="label1" :options="options1" @change="choose_store(value1)">
			</u-dropdown-item>
		</u-dropdown>
		<view class="bkAbove" :class="{bkAbove1:storeBool}">
			<u-swiper :list="list"></u-swiper>
		</view>
		<view>
			<view class="index_medium">
				<view style="width: 48%;position: relative;" @click="skip('king')">
					<u-image :src="img" width="100%" height="180rpx" border-radius="15"></u-image>
					<view class="box-title">
						排行榜
					</view>
				</view>
				<view style="width: 48%;position: relative;" @click="skip('script')">
					<u-image :src="img1" width="100%" height="180rpx" border-radius="15"></u-image>
					<view class="box-title">
						剧本库
					</view>
				</view>
			</view>
			<view style="margin-left: 16px; margin-top: 16px;">
				<u-section title="今日热门" font-size="32" sub-title=" " :arrow="false" color="#ffffff"></u-section>
			</view>

			<view class="mt-3 item_flex">
				<st-script :data="item" v-for="(item,index) in hotScriptList" :key="index"></st-script>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		Api_url
	} from '../../common/config.js'
	export default {
		data() {
			return {
				img: require("../../common/imgs/1.jpg"),
				img1: require("../../common/imgs/2.jpg"),
				storeCount: 0, //统计店铺总数
				storeBool: true, //判断是否显示“选择店铺”
				list: [],
				value1: 1,
				label1: '店铺',
				options1: [{
					label: '',
					value: 1,
				}],
				hotScriptList: [{}],
				hotScriptType: [],
				api: Api_url
			}
		},
		onLoad() {
			this.get_swiper()
			this.get_store()
			this.get_hotScript()

		},
		onShow() {
			getApp().globalData.sys_store.then(res => {})

		},
		methods: {
			// 获取热门剧本
			get_hotScript() {
				this.$http.get(this.$api.home.hotScript + "?id=" + getApp().globalData.storeId).then(res => {
					this.hotScriptList = res.data
					for (let v in this.hotScriptList) {
						this.hotScriptType[v] = this.hotScriptList[v].type.split(",")
						this.hotScriptList[v].type = this.hotScriptType[v]
					}
				})
			},
			// 选择店铺
			choose_store(value) {
				for (let v in this.options1) {
					if (this.options1[v].value == value) {
						this.label1 = this.options1[v].label
					}
				}
				getApp().globalData.storeId = value
				console.log('全局店铺id', getApp().globalData.storeId)
				this.get_hotScript()
			},
			// 获取所有店铺
			get_store() {
				getApp().globalData.sys_store.then(res => {
					let rec_Arr = res.data
					let list = [];
					for (let v in rec_Arr) {
						let obj = {
							value: res.data[v].id,
							label: res.data[v].name
						}
						list.push(obj);
					}
					this.options1 = list;
					this.storeCount = this.options1.length //获取店铺总数
					if (this.storeCount > 1) {
						this.storeBool = false
					}
				})
			},
			//获取轮播图
			get_swiper() {
				this.$http.get(this.$api.home.banner).then(res => {
					this.list = []
					if (res.status == 200) {
						for (let v in res.data) {
							this.list[v] = Api_url.Api_url + res.data[v].img.url
						}
					}
				})
			},
			//跳转
			skip(type) {
				switch (type) {
					case 'king':
						uni.navigateTo({
							url: '/pages/index/ranking/ranking'
						})
						break;
					case 'script':
						uni.switchTab({
							url: '/pages/script/script'
						})
						break;
				}
			},
			// 下拉刷新
			onPullDownRefresh() {
				console.log('refresh');
				this.get_swiper()
				this.get_store()
				this.get_hotScript()
				setTimeout(function() {
					uni.stopPullDownRefresh();
				}, 1000);
			}

		}
	}
</script>

<style lang="less">
	.item_flex {
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
	}

	.index_medium {
		width: 100%;
		display: flex;
		justify-content: space-around;
	}

	.bkcolor {
		.u-cell {
			background-color: #1B2026 !important;
			border: 1px solid #000044;
		}
	}

	.bkAbove {
		padding: 0 16px 16px 16px;
	}

	.box-title {
		font-size: 32rpx;
		color: #FFFFFF;
		font-weight: bold;
		position: absolute;
		bottom: 24rpx;
		right: 16%;
	}

	.bkAbove1 {
		background-color: #171824;
		padding-top: 40px;
	}
</style>
