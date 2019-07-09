/// @description Spawn rhythm icon
with(ui_rhythm_marker)
{
	var icon = instance_create_layer(x, 0, "DrinkStationScreen", ui_rhythm_icon);
	icon.rhythmMarker = self;
	ds_queue_enqueue(icons, icon);
}
alarm[0] = random_range(minSpawnInterval, maxSpawnInterval) * room_speed;