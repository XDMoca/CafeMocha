/// @function toggle_result_screen(show)
/// @description Shows the result screen
/// @arg show whether to show or hide the screen

var show = argument0;
if(show)
{
	instance_activate_object(ui_result_screen_base);
	instance_activate_object(ui_result_screen_text);
}
else
{
	instance_deactivate_object(ui_result_screen_base);
	instance_deactivate_object(ui_result_screen_text);
}