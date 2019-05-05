depth = -y;

cup = noone;

#region UIPanel
isMenuOpen = false;
roomWidth = room_width;
viewWidth = view_get_wport(0);
viewHeight = view_get_hport(0);
panelWidth = roomWidth;
panelColour = make_color_rgb(102, 34, 0);
#endregion

#region Equipment
toggle_drink_station_display(id, false);
#endregion