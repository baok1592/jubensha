const new_price = (price) => {
	if(price > 1){
		price = Math.floor(price)
	}else{
		price = price
	}
	return price
}

const count_price = (price)=>{
	price = Math.floor(price * 100)/100
	return price.toFixed(2)
} 

export{
	new_price,
	count_price 
}
