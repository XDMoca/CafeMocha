/// @function tray_has_order_items(interactionManager)
/// @description returns whether or not the tray has order items
/// @arg interactionManager The interaction manager

var interactionManager = argument0;

for(var i=0; i<array_length_1d(interactionManager.orderItems); i++)
{
	if(interactionManager.orderItems[i] > 0)
		return true;
}

return false;