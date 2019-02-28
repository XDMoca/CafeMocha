/// @description Spawn Customer Party

var customerParty = instance_create_layer(0, 0, layer_characters, obj_customer_party);

var customersToSpawn = irandom_range(minCustomersToSpawn, maxCustomersToSpawn)
for(var i = 0; i < customersToSpawn; i++)
{
	var customerSpawned = instance_create_layer(x, y, layer_characters, obj_customer_1);
	customerSpawned.targetToFollow = i == 0 ? obj_mocha : customerParty.customers[i-1];
	customerSpawned.party = customerParty;
	customerParty.customers[i] = customerSpawned;
}
customerParty.numberOfCustomersInParty = array_length_1d(customerParty.customers);