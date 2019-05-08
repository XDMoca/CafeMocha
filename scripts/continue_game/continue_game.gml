/// @function continue_game()
/// @description Continues an old saved game

load_game();
change_room(rm_shop_closed, noone);
GameManager.showHud = true;