if(direction == Direction.left)
	draw_sprite(spr_chair_left, 0, x, y);
else if(direction == Direction.right)
	draw_sprite(spr_chair_right, 0, x, y);
else if(direction == Direction.up)
	draw_sprite(spr_chair_bottom, 0, x, y);
else if(direction == Direction.down)
	draw_sprite(spr_chair_top, 0, x, y);