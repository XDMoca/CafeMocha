party = noone;
chairs = [];
chairPositionOffset = 30;
chairs[0] = instance_create_layer(x-chairPositionOffset, y, layer_room_objects, obj_chair);
chairs[0].direction = Direction.right;
chairs[1] = instance_create_layer(x+chairPositionOffset, y, layer_room_objects, obj_chair);
chairs[1].direction = Direction.left;