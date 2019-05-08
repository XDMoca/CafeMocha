/// @function save_game()
/// @description Saves the game data

with(GameManager)
{
	ds_map_replace(gameSaveDataMap, const_save_key_time, timeOfDay);
	ds_map_replace(gameSaveDataMap, const_save_key_day, dayOfWeek);
	ds_map_replace(gameSaveDataMap, const_save_key_money, money);
	ds_map_secure_save(gameSaveDataMap, const_save_file_name)
}