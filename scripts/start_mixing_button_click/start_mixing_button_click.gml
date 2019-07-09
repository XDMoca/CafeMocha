/// @function start_mixing_button_click(startMixingButton)
/// @description Handles button interactions with the Start Mixing Button
/// @arg startMixingButton the start mixing button

var startMixingButton = argument0;
instance_deactivate_object(startMixingButton);
instance_activate_object(btn_stop_mixing);
with(ui_rhythm_marker)
{
	active = true;
}
startMixingButton.drinkStation.active = true;
startMixingButton.drinkStation.alarm[0] = random_range(startMixingButton.drinkStation.minSpawnInterval, startMixingButton.drinkStation.maxSpawnInterval) * room_speed;