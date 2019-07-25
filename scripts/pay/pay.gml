/// @function pay(partyObject)
/// @description Pays the bill for the party
/// @arg partyObject The party object

var partyObject = argument0;
ShopSessionManager.amountEarned += (partyObject.numberOfCustomersInParty * 50)
audio_play_sound(snd_cash_register, 10, false);