depth = -y;

cup = noone;

#region UIPanel
isMenuOpen = false;
windowWidth = window_get_width();
roomWidth = room_width;
windowHeight = window_get_height();
panelWidth = roomWidth;
panelColour = make_color_rgb(102, 34, 0);
#endregion

#region Equipment
cupDispenser = obj_cup_dispenser;
milkSteamer = obj_milk_steamer;
kettle = obj_kettle;
grinder = obj_grinder;

instance_deactivate_object(cupDispenser);
instance_deactivate_object(milkSteamer);
instance_deactivate_object(kettle);
instance_deactivate_object(grinder);
#endregion