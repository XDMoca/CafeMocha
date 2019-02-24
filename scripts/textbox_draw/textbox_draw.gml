///@description textbox_draw
///@arg Text
///@arg CharacterName
///@arg Colour
///@arg TextColour
///@arg OutlineColour
///@arg Alpha
///@arg Font
///@arg Sprite
///@arg SelectedTextColour
///@arg Option1
///@arg Option2
///@arg Option3
///Draw a box with text - Supports different camera and view sizes

//If view height is lower than 300 make things smaller
if camera_get_view_width(view_camera[view_current]) <= 300 {
	var smaller = 100;
}else{
	var smaller = 50;
}

//If there is a sprite, scale things to fit it
if argument[7] != noone {
var sprite_w = 128;
}else{
var sprite_w = 0;
}

//Rectangle
draw_set_colour(argument[2]);
draw_set_alpha(argument[5]);
draw_rectangle(camera_get_view_x(view_camera[view_current])+10,camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current])-187+smaller,camera_get_view_x(view_camera[view_current])+camera_get_view_width(view_camera[view_current])-10,camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current])-10,false);

//Outline
if argument[4] != noone {
draw_set_colour(argument[4]);
draw_rectangle(camera_get_view_x(view_camera[view_current])+10,camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current])-187+smaller,camera_get_view_x(view_camera[view_current])+camera_get_view_width(view_camera[view_current])-10,camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current])-10,true);
}

//Draw sprite
if argument[7] != noone {
draw_sprite(argument[7],0,camera_get_view_x(view_camera[view_current])+10,camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current])-187+smaller);
}

//Text
draw_set_colour(argument[3]);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_font(argument[6]);
draw_text_ext(camera_get_view_x(view_camera[view_current])+20+sprite_w,camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current])-177+smaller,argument[0],35,camera_get_view_width(view_camera[view_current])-(40+sprite_w));

//Characters name rectangle
if argument[1] != noone {
draw_set_colour(argument[2]);
draw_set_alpha(argument[5]);
draw_rectangle(camera_get_view_x(view_camera[view_current])+10,camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current])-257+smaller*1.3,camera_get_view_x(view_camera[view_current])+300,(camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current])-180+smaller)-10,false);
}

//Characters name rectangle outline
if argument[1] != noone {
if argument[4] != noone {
draw_set_colour(argument[4]);
draw_rectangle(camera_get_view_x(view_camera[view_current])+10,camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current])-257+smaller*1.3,camera_get_view_x(view_camera[view_current])+300,(camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current])-180+smaller)-10,true);
}
}

//Characters name
if argument[1] != noone {
draw_set_colour(argument[3]);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_text(camera_get_view_x(view_camera[view_current])+160,camera_get_view_y(view_camera[view_current])+camera_get_view_height(view_camera[view_current])-240+smaller*1.2,argument[1]);
}

//Show options
if options_show = true {
	if argument_count >= 12 {
		options_draw(argument[3],argument[8],argument[6],argument[9],argument[10],argument[11]);
	}else
	if argument_count >= 11 {
		options_draw(argument[3],argument[8],argument[6],argument[9],argument[10]);
	}else
	if argument_count >= 10 {
		options_draw(argument[3],argument[8],argument[6],argument[9]);
	}
}




draw_set_halign(fa_left);