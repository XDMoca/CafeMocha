/// @function stop_mixing_button_click(stopMixingButton)
/// @description Handles button interactions with the Stop Mixing Button
/// @arg stopMixingButton the stop mixing button

var stopMixingButton = argument0;
with(ui_rhythm_marker)
{
	active = false;
	alarm[0] = -1;
	while(ds_queue_size(icons) > 0)
	{
		instance_destroy(ds_queue_dequeue(icons));
	}
}
stopMixingButton.drinkStation.active = false;
instance_deactivate_object(stopMixingButton);
instance_activate_object(btn_start_mixing);