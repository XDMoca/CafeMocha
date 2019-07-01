range = 50;
cup = noone;

trayItems = ds_list_create();
maxTrayItems = 5;

orderItems = [];
//Initialise Order Array
for(var i=0; i<OrderItem.Length; i++)
{
	order[i] = 0;
}

party = noone;

yRangeModifier = 0;
xRangeModifier = 0;

interactableTypeInInteractionRange = -1;
interactableInInteractionRange = noone;

#region Interaction Prompt
viewWidth = view_get_wport(0);
promptYPosition = view_get_hport(0) - 50;
#endregion