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
interactableInInteractionRange = collision_line(obj_mocha.x, obj_mocha.y, obj_mocha.x+xRangeModifier, obj_mocha.y+yRangeModifier, obj_door, false, true);
if(interactableInInteractionRange != noone)
{
	interactableTypeInInteractionRange = InteractableType.Door;
	return;
}
interactableTypeInInteractionRange = -1;
#endregion