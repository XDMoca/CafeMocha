depth = -y;

active = false;

maxSpawnInterval = 2.1;
minSpawnInterval = 0.9;

#region Selected OrderItems
maxOrderItemsCanHold = 10;
selectedOrderItems = ds_list_create();

selectedOrderItemsPositions = [];
selectedOrderItemsPositions[0,0] = 440;
selectedOrderItemsPositions[0,1] = 100;
selectedOrderItemsPositions[1,0] = 510;
selectedOrderItemsPositions[1,1] = 100;
selectedOrderItemsPositions[2,0] = 580;
selectedOrderItemsPositions[2,1] = 100;
selectedOrderItemsPositions[3,0] = 650;
selectedOrderItemsPositions[3,1] = 100;
selectedOrderItemsPositions[4,0] = 720;
selectedOrderItemsPositions[4,1] = 100;
selectedOrderItemsPositions[5,0] = 440;
selectedOrderItemsPositions[5,1] = 170;
selectedOrderItemsPositions[6,0] = 510;
selectedOrderItemsPositions[6,1] = 170;
selectedOrderItemsPositions[7,0] = 580;
selectedOrderItemsPositions[7,1] = 170;
selectedOrderItemsPositions[8,0] = 650;
selectedOrderItemsPositions[8,1] = 170;
selectedOrderItemsPositions[9,0] = 720;
selectedOrderItemsPositions[9,1] = 170;
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