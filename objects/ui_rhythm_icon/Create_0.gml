event_inherited();

fallSpeed = 1;
isFalling = true;
rhythmMarker = noone;
spriteHeight = sprite_height;
ingredientType = -1;

var type = irandom_range(0, Ingredient.Length-1);
switch(type)
{
	case 0: 
		ingredientType = Ingredient.Coffee;
		sprite_index = spr_rhythm_icon_bean;
		break;
	case 1:
		ingredientType = Ingredient.Water;
		sprite_index = spr_rhythm_icon_water;
		break;
}
