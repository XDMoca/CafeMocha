/// @function pay(partyObject)
/// @description Pays the bill for the party
/// @arg partyObject The party object

var partyObject = argument0;
GameManager.moneyGained += (partyObject.numberOfCustomersInParty * 50)