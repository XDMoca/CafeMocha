return;
switch(interactionManager.interactableTypeInInteractionRange)
{
	case InteractableType.Kettle:
	{
		var interactable = interactionManager.interactableInInteractionRange;
		equipmentNameText = "Kettle";
		equipmentInfoTextLine1 = interactable.isOn ? "Boiling" : "Switched Off";
		equipmentInfoTextLine2 = "Heat level: " + string(interactable.currentHeatLevel) + "/" + string(interactable.maxHeatLevel);
		equipmentInfoTextLine3 = "Cupfuls of water: " + string(interactable.currentCupsHeld) + "/" + string(interactable.maxCupsCanHold);
		break;
	}
	case InteractableType.Grinder:
	{
		var interactable = interactionManager.interactableInInteractionRange;
		equipmentNameText = "Grinder";
		equipmentInfoTextLine1 = "Reps till next cupful: " + string(interactable.currentReps) + "/" + string(interactable.repsTillOneGrind);
		equipmentInfoTextLine2 = "Cupfuls of beans: " + string(interactable.currentCupsHeld) + "/" + string(interactable.maxCupsCanHold);
		equipmentInfoTextLine3 = "";
		break;
	}
	case InteractableType.MilkSteamer:
	{
		var interactable = interactionManager.interactableInInteractionRange;
		equipmentNameText = "Milk Steamer";
		equipmentInfoTextLine1 = "Steamedness: " + string(interactable.currentSteamedLevel) + "/" + string(interactable.maxSteamedLevel);
		equipmentInfoTextLine2 = "Cupfuls of milk: " + string(interactable.currentCupsHeld) + "/" + string(interactable.maxCupsCanHold);
		equipmentInfoTextLine3 = "";
		break;
	}
	default:
	{
		equipmentNameText = "";
		equipmentInfoTextLine1 = "";
		equipmentInfoTextLine2 = "";
		equipmentInfoTextLine3 = "";
		break;
	}
}