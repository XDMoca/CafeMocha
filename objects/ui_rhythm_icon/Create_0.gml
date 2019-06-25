event_inherited();

fallSpeed = 1;
isFalling = true;
rhythmMarker = noone;
spriteHeight = sprite_height;
orderItemType = -1;

var type = irandom_range(0, OrderItem.Length-1);
switch(type)
{
	case 0: 
		orderItemType = OrderItem.Coffee;
		sprite_index = spr_rhythm_icon_bean;
		break;
	case 1:
		orderItemType = OrderItem.Water;
		sprite_index = spr_rhythm_icon_water;
		break;
}
