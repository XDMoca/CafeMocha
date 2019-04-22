if(!can_move_in_closed_shop())
	return;
	
#region InteractionCode
switch(interactableTypeInInteractionRange)
{
	case InteractableType.Door:
			interact_with_door();
	break;
}
#endregion