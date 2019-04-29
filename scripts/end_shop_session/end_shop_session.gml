/// @function end_shop_session()
/// @description Moves to closed shop state


change_room(rm_shop_closed, snd_door_close);
show_debug_message(GameManager.timeOfDay);
advance_time();
show_debug_message(GameManager.timeOfDay);