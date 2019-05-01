/// @function get_day_text(day)
/// @description Gets a string text for the day
/// @arg time the day of week

var day = argument0;

switch(day)
{
	case DayOfWeek.Monday: return "Monday"; break;
	case DayOfWeek.Tuesday: return "Tuesday"; break;
	case DayOfWeek.Wednesday: return "Wednesday"; break;
	case DayOfWeek.Thursday: return "Thursday"; break;
	case DayOfWeek.Friday: return "Friday"; break;
	case DayOfWeek.Saturday: return "Saturday"; break;
	case DayOfWeek.Sunday: return "Sunday"; break;
}