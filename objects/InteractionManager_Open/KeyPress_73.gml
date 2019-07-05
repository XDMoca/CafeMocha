for(var i=0; i<OrderItem.Length; i++)
{
	var str = "";
	switch(i)
	{
		case OrderItem.Coffee: str = "Coffee: "
		break;
		case OrderItem.Water: str = "Water: "
		break;
	}
	show_debug_message(str + string(orderItems[i]));
}