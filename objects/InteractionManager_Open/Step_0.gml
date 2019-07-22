#region Direction
xRangeModifier = 0;
yRangeModifier = 0;

switch(obj_mocha.direction)
{
	case Direction.right: xRangeModifier = range; break;
	case Direction.up: yRangeModifier = -range; break;
	case Direction.left: xRangeModifier = -range; break;
	case Direction.down: yRangeModifier = range; break;
}
#endregion

#region Detection
interactableInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_drink_station, false, true);
if(interactableInInteractionRange != noone)
{
	interactableTypeInInteractionRange = InteractableType.DrinkStation;
	return;
}

interactableInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_table, false, true);
if(interactableInInteractionRange != noone)
{
	interactableTypeInInteractionRange = InteractableType.Table;
	return;
}

interactableInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_customer, false, true);
if(interactableInInteractionRange != noone)
{
	interactableTypeInInteractionRange = InteractableType.Customer;
	return;
}
interactableTypeInInteractionRange = -1;
#endregion