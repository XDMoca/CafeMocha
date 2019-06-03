depth = -y;

cup = noone;

#region Selected Ingredients
maxIngredientsCanHold = 10;
selectedIngredients = ds_list_create();

selectedIngredientsPositions = [];
selectedIngredientsPositions[0,0] = 440;
selectedIngredientsPositions[0,1] = 100;
selectedIngredientsPositions[1,0] = 510;
selectedIngredientsPositions[1,1] = 100;
selectedIngredientsPositions[2,0] = 580;
selectedIngredientsPositions[2,1] = 100;
selectedIngredientsPositions[3,0] = 650;
selectedIngredientsPositions[3,1] = 100;
selectedIngredientsPositions[4,0] = 720;
selectedIngredientsPositions[4,1] = 100;
selectedIngredientsPositions[5,0] = 440;
selectedIngredientsPositions[5,1] = 170;
selectedIngredientsPositions[6,0] = 510;
selectedIngredientsPositions[6,1] = 170;
selectedIngredientsPositions[7,0] = 580;
selectedIngredientsPositions[7,1] = 170;
selectedIngredientsPositions[8,0] = 650;
selectedIngredientsPositions[8,1] = 170;
selectedIngredientsPositions[9,0] = 720;
selectedIngredientsPositions[9,1] = 170;
#endregion

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