/// @function end_shop_session()
/// @description Moves to closed shop state

change_room(rm_shop_closed, snd_door_close);
advance_time();
save_game();