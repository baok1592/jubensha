<template>
	<view class="info_index">
		<u-image :src="getimg + object.img.url" width="100%" height="390rpx" v-if="object.img"></u-image>
		<view class="btReturn" @click="goto_return()"><u-icon name="arrow-leftward" color="#ffffff" size="30"></u-icon></view>
		<view>
			<view class="shang">
				<view class="wrap">
					<u-row gutter="16" class="p-2">
						<u-col span="9">
							<view class="demo-layout bg-purple"><text class="fs-32 fw-bold"
									style="color: #d99100;">{{object.title}}</text>
							</view>
						</u-col>
						<u-col span="1" :offset="0.5">
							<button class="btShare" open-type="share">
								<u-icon name="share"></u-icon>分享
							</button>
						</u-col>
					</u-row>
					<u-row gutter="16">
						<u-col span="4">
							<view class="demo-layout bg-purple"><text style="color:#afafaf;">预计：{{object.time}}小时</text>
							</view>
						</u-col>
						<u-col span="3" :offset="5">
							<view class="wenben">
								<u-icon name="heart" v-if="tag ==''" @click="collect()" size="40" color="#e7e7e7">
								</u-icon>
								<text v-if="tag ==''" style="color: #e7e7e7;">收藏</text>
								<u-icon name="heart-fill" v-if="tag != ''" @click="cancel_collect()" size="40"
									color="red"></u-icon>
								<text v-if="tag !=''" style="color: #e7e7e7;">已收藏</text>
							</view>
						</u-col>
					</u-row>
				</view>
				<view class="mt-2 d-flex" style="padding-bottom: 10px;">
					<u-tag :text="item" class="me-2" type="success" size="mini" bg-color="#343434" color="#d3d3d3"
						border-color="#343434" v-if="index < 5" v-for="(item,index) in type" :key="index" />
				</view>
			</view>
			<view class="ders">
				<view class="info-title d-flex icon1">
					<u-image src="@/static/info/info.png" width="38rpx" height="38rpx"></u-image>
					<view class=" ms-2 main_text">
						故事介绍
					</view>
				</view>
				<view class="mt-3" style="color: #afafaf;">
					{{object.describe}}
				</view>
			</view>
		</view>
		<view class="jobs">
			<view class="info-title d-flex icon1">
				<u-image src="@/static/info/job.png" width="38rpx" height="38rpx"></u-image>
				<view class=" ms-2 main_text" style="margin-top: 3px;">
					角 色
				</view>
			</view>
			<scroll-view scroll-x="true" class="scroll-x mt-3 ">
				<view class="job-item  d-inline-block m-2 p-2" v-for="(item,index) in object.jobs" :key="index">
					<view style="width: 100%;height: 100%;" class="d-flex">
						<u-image :src="getimg + item.img.url" width="180rpx" height="100%" v-if="item.img">
						</u-image>
						<view class="ms-3 w-75">
							<view class="fw-bold " style="color: #c5c561;">{{item.name}}</view>
							<text class="text-muted job-info">
								{{item.describe}}
							</text>
						</view>
					</view>
				</view>
			</scroll-view>
		</view>
	</view>
	</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				scriptId: '',
				object: {},
				type: [], //用于接收object中type字符串转为数组的值
				getimg: this.$getimg,
				tag: '',
				isH5: false,
				isH5text: "此功能请在小程序端查看",
			}
		},
		onLoad(value) {
			this.scriptId = value.id //把获取来的id保存下来
			this.get_Script()
		},
		methods: {
			goto_return(){
				uni.navigateBack({
					
				})
			},
			// 查找某个剧本
			get_Script() {
				let vart = '?id=' + this.scriptId;
				this.$http.get(this.$api.info.script + vart).then(res => {
					console.log("res", res)
					console.log("123")
					this.object = res.data.script
					this.type = this.object.type.split(",")
					if (res.data.like) {
						this.tag = res.data.like.id
					} else {
						this.tag = ''
					}
				})
			},
			// 收藏
			collect() {
				this.$http.put(this.$api.info.collect + "?id=" + this.scriptId).then(res => {
					if (res.status == 200) {
						console.log("收藏成功！")
						this.get_Script()
					}
				})
			},
			// 取消收藏
			cancel_collect() {
				this.$http.del(this.$api.info.cancelCol + "?id=" + this.tag).then(res => {
					if (res.status == 200) {
						console.log("this.caltag", this.tag)
						console.log("取消成功！")
						this.get_Script()
					}
				})
			},
			// 下拉刷新
			onPullDownRefresh() {
				console.log('refresh');
				this.get_Script()
				setTimeout(function() {
					uni.stopPullDownRefresh();
				}, 1000);
			}
		}
	}
</script>

<style scoped lang="scss">
	.btReturn {
		position: absolute;
		left: 10px;
		top: 10px;
		height: 35px;
		line-height: 35px;
		width: 35px;
		font-size: 18px;
		border-radius: 50%;
		text-align: center;
		opacity: 0.8;
		 background:rgba(78,87,104, 0.6);
	}

	.info_index {
		position: relative;
		min-height: 110vh;
		background-color: #171824;
	}

	.info-title {
		height: 32rpx;
		line-height: 32rpx;
	}

	.main_text {
		color: #c5c561;
	}

	.job-item {
		width: 75%;
		height: 200rpx;
		background-color: #1B2026;
		border-radius: 10px;

		.job-info {
			white-space: normal;
			font-size: 24rpx;
		}
	}

	.scroll-x {
		white-space: nowrap;
	}

	.icon1 {
		display: flex;
		align-items: center;
	}

	.shang {
		padding-left: 16px;
		border-radius: 10px;
		background-color: #171824;
	}

	.btShare {
		font-size: 14px;
		width: 80px;
		height: 25px;
		line-height: 25px;
		text-align: left;
		border-top-left-radius: 60px;
		border-bottom-left-radius: 60px;
		background-color: #1B2026;
		color: white;
	}

	.wenben {
		margin-left: 20px;
		
	}

	.ders {
		background-color: #171824;
		margin-top: 10rpx;
		border-radius: 10px;
		padding: 10px;
	}

	.jobs {
		background-color: #171824;
		margin-top: 10rpx;
		border-radius: 10px;
		padding: 10px;
	}
</style>
