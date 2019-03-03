minSpawnInterval = 5 * room_speed;
maxSpawnInterval = 15 * room_speed;
alarm[0] = minSpawnInterval;

minCustomersToSpawn = 1;
maxCustomersToSpawn = 2;

#region Setup spawn points
spawnPositions[0,0] = 0;
spawnPositions[0,1] = 0;
spawnPositions[1,0] = -35;
spawnPositions[1,1] = 0;
spawnPositions[2,0] = 0;
spawnPositions[2,1] = 35;
spawnPositions[3,0] = 35;
spawnPositions[3,1] = 0;
#endregion