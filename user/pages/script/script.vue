<template>
	<view class="script_index p-2">
		<!-- 筛选 -->
		<view class="script_top">
			<view class="my-2 d-flex" v-for="(item,index) in type_arr" :key="index">
				<text class="fw-bold mx-3" style="color:#d38d00">{{item.name}}</text>
				<scroll-view scroll-x="ture" class="scroll-x w-75">
					<text class="mx-2 px-2 rounded-1" :class="{cctb:item1.select}" v-for="(item1,index1) in item.type"
						@click="type_change(item1,index1,item.type)" :key="index1">
						{{item1.name}}
					</text>
				</scroll-view>
				</view>
			</view>
		<!-- 筛选 end -->
		<view class="mt-3 item_flex">
			<st-script :data="item" v-for="(item,index) in scriptList" :key="index"></st-script>
		</view>

	</view>
</template>

<script>
	export default {
		data() {
			return {
				show: false,
				scriptType: [],
				scriptList: [{}],
				type_arr: [{}],
				list: [],
				stringvalue: '',
				stringvalue1: '',
				label:true
			}
		},
		computed: {

		},
		onLoad() {
			this.get_allScript()
			this.get_allType()
		},
		onShow() {
			this.get_allScript()
		},
		methods: {
			type_change(item, index, list) {
				console.log(list[index])
				if(item.select == true){
					item.select = false
					this.stringvalue = ''
					for (let v in this.type_arr) {
						for (let u in this.type_arr[v].type) {
							if (this.type_arr[v].type[u].select == true) {
								this.sum++;
								this.stringvalue1 = '%' + this.type_arr[v].type[u].name + '%'
								this.stringvalue += this.stringvalue1
							}
						}
					}
					this.script_select()
				}
				else{
					item.select = true
					for (let v in list) {
						list[v].select = false
					}
					list[index].select = true
					this.stringvalue = ''
					// 遍历找出那些为true
					for (let v in this.type_arr) {
						for (let u in this.type_arr[v].type) {
							if (this.type_arr[v].type[u].select == true) {
								this.sum++;
								this.stringvalue1 = '%' + this.type_arr[v].type[u].name + '%'
								this.stringvalue += this.stringvalue1
							}
						}
					}
				this.script_select()
				}
				console.log("this.stringvale",this.stringvalue)
				for (let v in this.type_arr) {
					for (let u in this.type_arr[v].type) {
						if (this.type_arr[v].type[u].select == false) {
							this.label = false
						}
						else{
							this.label=true
							return
						}
					}
				}
				if(this.label == false){
					this.get_allScript()
				}
			},
			// 获取所有剧本
			get_allScript() {
				this.$http.get(this.$api.script.allScript + "?id=" + getApp().globalData.storeId).then(res => {
					this.scriptList = res.data
					for (let v in this.scriptList) {
						this.scriptType[v] = this.scriptList[v].type.split(",")
						this.scriptList[v].type = this.scriptType[v]
					}
				})
			},
			// 获取所有类型
			get_allType() {
				this.$http.get(this.$api.script.allType).then(res => {
					this.type_arr = res.data
				})
			},
			// 条件筛选
			script_select() {
				let s_id = getApp().globalData.storeId
				this.$http.get(this.$api.script.selectScript + "?type=" + this.stringvalue + "&sid=" + s_id).then(res => {
					this.scriptList = res.data
					for (let v in this.scriptList) {
						this.scriptType[v] = this.scriptList[v].type.split(",")
						this.scriptList[v].type = this.scriptType[v]
					}
				})
			},
			// 下拉刷新
			onPullDownRefresh() {
			    console.log('refresh');
				this.get_allScript()
				this.get_allType()
			    setTimeout(function () {
			        uni.stopPullDownRefresh();
			    }, 1000);
			}
		}
	}
</script>

<style scoped>
	.script_index{
		background-color: #171824;
		min-height: 100vh;
	}
	.item_flex{
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
	}
	.cctb {
		background-color: #19be6b;
		color: #f4f4f5;
	}
	.script_top{
		background-color: #1B2026;
		color: #afafaf;
		border-radius: 10px;
		padding-top: 10rpx;
		padding-bottom: 10rpx;
	}
	.scroll-x {
		white-space: nowrap;
	}
</style>
