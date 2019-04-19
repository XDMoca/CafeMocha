/// @function give_cup(trayItemButton)
/// @description Gives the cup belonging to this button to the customer
/// @arg trayItemButton The tray item

var trayItemButton = argument0;
var interactionManager = InteractionManager;
var cupObject = interactionManager.trayItems[| trayItemButton.buttonIndex];
var customerObject = interactionManager.interactableInInteractionRange;
if(interactionManager.interactableTypeInInteractionRange != InteractableType.Customer)
	return;

if(cupObject == noone)
	return;

var cupRating = cupObject.ingredientScore / array_length_1d(cupObject.ingredients);

var isOrderCorrect = does_cup_match_order(cupObject, customerObject.order);
if(!isOrderCorrect)
	cupRating = cupRating/2;
show_debug_message("this cup's rating is: " + string(cupRating));

customerObject.satisfactionRating = cupRating;
customerObject.customerStatus = CustomerStatus.drinkingOrder;
customerObject.alarm[0] = customerObject.timeToFinishDrink;

ds_list_delete(interactionManager.trayItems, trayItemButton.buttonIndex);
instance_destroy(cupObject);

hide_tray_menu();