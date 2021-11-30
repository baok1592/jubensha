<template>
	<view class="collection_index p-2">
		<view :class="{Tip:bool}">
			<u-empty text="暂时还没有您关注的剧本哦！" mode="list" v-if="scriptList.length == 0"></u-empty>
			<view class="btReturn" @click="goto_return()"><u-icon name="arrow-leftward" color="#ffffff" size="30"></u-icon></view>
		</view>
		
		
		<view class="mt-5">
			<st-script :data="item" v-for="item in scriptList"></st-script>
		</view>
	</view>
</template>
<script>
	export default {
		onLoad() {
			this.get_col()
		},
		onShow() {
			this.get_col()
		},
		data() {
			return {
				scriptList: [{}],
				scriptType: [],
				bool: true
			}
		},
		methods: {
			goto_return(){
				uni.navigateBack({
					
				})
			},
			get_col() {
				this.$http.get(this.$api.user.select).then(res => {
					if (res.status == 200) {
						console.log("res", res)
						this.scriptList = res.data
						for (let v in this.scriptList) {
							this.scriptType[v] = this.scriptList[v].type.split(",")
							this.scriptList[v].type = this.scriptType[v]
						}
						if (this.scriptList.length >= 1) {
							this.bool = false
						} else {
							this.bool = true
						}
					}
				})
			}
		}
	}
</script>
<style>
	.collection_index{
		background-color: #171824;
		min-height: 100vh;
	}
	.Tip {
		display: flex;
		justify-content: space-around;
		flex-wrap: wrap;
		margin-top: 300rpx;
	}

	.tipFont {
		font-weight: bold;
	}
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
	
</style>
