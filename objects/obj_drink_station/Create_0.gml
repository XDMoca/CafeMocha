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
btnCup = btn_cup;
btnDiscardCup = btn_discard_cup;
btnMilk = btn_milk;
btnFoamedMilk = btn_foamed_milk;
btnEspresso = btn_espresso;

toggle_drink_station_display(id, false);
#endregion