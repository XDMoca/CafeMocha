/// @description Spawn Customer Party

var customerParty = instance_create_layer(0, 0, layer_characters, obj_customer_party);
var customerSpawned = instance_create_layer(x, y, layer_characters, obj_customer_1);
customerSpawned.targetToFollow = obj_mocha;
customerSpawned.party = customerParty;
customerParty.customers[0] = customerSpawned;
customerParty.alarm[0] = irandom_range(customerParty.minTimeToDecideOrder, customerParty.maxTimeToDecideOrder) * room_speed;