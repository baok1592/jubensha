<template>
	<view class="qy-page">
		
	<view class="p-2">
		<!-- 前三  -->
		<view class="mt-5 d-flex justify-content-between px-3">
			<view class="position-relative rounded-circle bg-warning border border-3 border-warning "
			 style="width: 150rpx; height: 150rpx;z-index: 4; top: 24px;">
				<u-image :src="img"  width="100%"  height="100%" shape="circle" ></u-image>
				<u-image class="top-king2"  src="@/static/ranking/king2.png" width="80rpx"  height="80rpx"></u-image>
				<view class="text-center mt-2 fw-bold">
					暂无~
				</view>
				<view class="text-center mt-2 text-warning">
					12次
				</view>
			</view>
			<view class="position-relative rounded-circle bg-warning border border-3 border-warning"
			 style="width: 180rpx; height: 180rpx;z-index: 4;">
				<u-image :src="img"  width="100%"  height="100%" shape="circle" ></u-image>
				<u-image class="top-king"  src="@/static/ranking/king1.png" width="100rpx"  height="100rpx"></u-image>
				<view class="text-center mt-2 fw-bold">
					暂无~
				</view>
				<view class="text-center mt-2 text-warning">
					13次
				</view>
			</view>
			<view class="position-relative rounded-circle bg-warning border border-3 border-warning"
			 style="width: 150rpx; height: 150rpx;z-index: 4;top: 24px;">
				<u-image :src="img"  width="100%"  height="100%" shape="circle" ></u-image>
				<u-image class="top-king2"  src="@/static/ranking/king3.png" width="80rpx"  height="80rpx"></u-image>
				<view class="text-center mt-2 fw-bold">
					暂无~
				</view>
				<view class="text-center mt-2 text-warning">
					11次
				</view>
			</view>
		</view>
		<!-- 前三  end-->
		
		
		<view class="king-list mx-2 ">
			<block v-for="item in 4">
				<view class="d-flex king-list-item justify-content-between" >
					<view class="d-flex  fw-bold">
						<view>
							4
						</view>
						<view class="mx-3">
							<u-image :src="img"  width="80rpx"  height="80rpx" shape="circle" ></u-image>
						</view>
						<view>暂无</view>
					</view>
					<view>
						10次
					</view>
				</view>
				<u-line color="#c8c9cc" class="m-2" />
			</block>
		</view>
	</view>
	
	<view class="my-king">
		<view class="d-flex my-king-item justify-content-between px-4" >
			<view class="d-flex  fw-bold">
				<view>
					未上榜
				</view>
				<view class="mx-3 my-auto">
					<u-image :src="img" width="80rpx" height="80rpx" shape="circle"></u-image>
				</view>
				<view>暂无</view>
			</view>
			<view>
				10次
			</view>
		</view>
	</view>
	
	</view>
</template>

<script>
	export default {
		data() {
			return {
				img:require("../../../common/imgs/man.png")
			}
		},
		onLoad() {
		},
		methods: {
		}
	}
</script>

<style scoped lang="scss">
	.top-king{
		position: absolute;
		left: 17px;
		top: -38px;
		z-index: -1;
	}
	.top-king2{
		position: absolute;
		left: 14px;
		top: -30px;
		z-index: -1;
	}
	.king-list{
		margin-top: 260rpx;
		
		padding: 48rpx 24rpx;
		background-color: #FFFFFF;
		border-radius: 10px;
		min-height: 660rpx;
		.king-list-item{
			
			height: 80rpx;
			line-height: 80rpx;
		}
	}
	.my-king{
		bottom: 0px;
		position: sticky;
		border-radius: 15px 15px 0px 0px;
		background-color: #FFF;
		height: 60px;
		width: 100%;
		.my-king-item{
			line-height: 60px;
		}
	}
</style>
