/// @description Spawn Customer Party	

var spawnX = 0;
var spawnY = 0;
for(var i = 0; i < array_height_2d(spawnPositions); i++)
{
	if(position_meeting(x+spawnPositions[i,0], y+spawnPositions[i,1], obj_customer_party))
	{
		continue;
	}
	else
	{
		spawnX = x+spawnPositions[i,0];
		spawnY = y+spawnPositions[i,1];
		break;
	}
}

if(spawnX != 0 && spawnY != 0)
{
	var customerParty = instance_create_layer(spawnX, spawnY, layer_characters, obj_customer_party);

	var customersToSpawn = irandom_range(const_min_customers_to_spawn, const_max_customers_to_spawn)
	var customerTypeToSpawn = get_customer_type_to_spawn();
	for(var i = 0; i < customersToSpawn; i++)
	{
		var customerSpawned = instance_create_layer(spawnX, spawnY, layer_characters, get_random_customer_of_type(customerTypeToSpawn));
		customerSpawned.targetToFollow = i == 0 ? obj_mocha : customerParty.customers[i-1];
		customerSpawned.party = customerParty;
		customerParty.customers[i] = customerSpawned;
	}
	customerParty.numberOfCustomersInParty = array_length_1d(customerParty.customers);
}

if(spawnerActive)
{
	alarm[0] = irandom_range(minSpawnInterval, maxSpawnInterval);
}