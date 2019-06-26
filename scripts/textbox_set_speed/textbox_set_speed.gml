///@description textbox_set_speed
///@arg ObjectTalking
///@arg speed1
///@arg speed2*
///@arg speed3*
///@arg ...
///Sets how fast the text increases in each message.
///There can be up to 10 messages
///You have to add as many arguments as there are messages. (You set the messages with textbox_create()).

with(argument[0].textbox) {
	//Set the speed for all the provided arguments
	for (var i = 1; i < 10; i ++;) {
		if argument_count > i {
			message_speed[i-1] = argument[i];
		}
	}
	//Speed is set
	speed_set = true;
}



//Example:
//textbox_set_speed(0.5,0.5,1,0.2,0.5);
//This sets the speed for 5 messages.