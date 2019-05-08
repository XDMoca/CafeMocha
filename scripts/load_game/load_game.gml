/// @function load_game()
/// @description Loads the game data

with(GameManager)
{
	gameSaveDataMap = ds_map_secure_load(const_save_file_name)
	if(gameSaveDataMap != -1)
	{
		timeOfDay = ds_map_find_value(gameSaveDataMap, const_save_key_time);
		dayOfWeek = ds_map_find_value(gameSaveDataMap, const_save_key_day);
		money = ds_map_find_value(gameSaveDataMap, const_save_key_money);
	}
}