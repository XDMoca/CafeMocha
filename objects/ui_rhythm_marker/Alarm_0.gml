/// @description Spawn rhythm icon
var icon = instance_create_layer(x, 0, "DrinkStationScreen", ui_rhythm_icon);
icon.rhythmMarker = self;
ds_queue_enqueue(icons, icon);
alarm[0] = 2 * room_speed;