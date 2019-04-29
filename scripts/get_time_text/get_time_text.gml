/// @function get_time_text(time)
/// @description Gets a string text for the time
/// @arg time the time of day

var time = argument0;

switch(time)
{
	case TimeOfDay.Morning: return "Morning"; break;
	case TimeOfDay.Afternoon: return "Afternoon"; break;
	case TimeOfDay.Evening: return "Evening"; break;
	case TimeOfDay.Night: return "Night"; break;
}