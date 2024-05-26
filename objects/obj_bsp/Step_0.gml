if(state == ALGORITHM.PARTITIONING)
{
	for(var _i = 0; _i < n; _i++)
	{
		var _selected_room = irandom(array_length(rooms) - 1);
		var _orientation = 0;
	
		if(rooms[_selected_room][0] > size * 2 && rooms[_selected_room][1] > size * 2)
		{
			_orientation = irandom(1);
		}
		
		else if(rooms[_selected_room][0] > size * 2)
		{
			_orientation = 0;
		}
		
		else if(rooms[_selected_room][1] > size * 2)
		{
			_orientation = 1;
		}
	
		else
		{
			_i--;
			continue;
		}
		
		var _pos = irandom(rooms[_selected_room][_orientation] - size * 2) + size;
		array_insert(rooms, _selected_room + 1, array_create(4));
		rooms[_selected_room + 1][abs(1 - _orientation)] = rooms[_selected_room][abs(1 - _orientation)];
		rooms[_selected_room + 1][_orientation] = rooms[_selected_room][_orientation] - _pos;
		rooms[_selected_room][_orientation] = _pos;
		rooms[_selected_room + 1][abs(1 - _orientation) + 2] = rooms[_selected_room][abs(1 - _orientation) + 2];
		rooms[_selected_room + 1][_orientation + 2] = rooms[_selected_room][_orientation + 2] + _pos;
	}
	
	for(var _i = 0; _i < floor(n / 4); _i++)
	{
		array_delete(rooms, irandom(array_length(rooms) - 1), 1);
	}
	
	starting_room = irandom(array_length(rooms) - 1);
	
	rooms[starting_room][2] = rooms[starting_room][2] + (rooms[starting_room][0] - size) / 2;
	rooms[starting_room][3] = rooms[starting_room][3] + (rooms[starting_room][1] - size) / 2;
	rooms[starting_room][0] = size;
	rooms[starting_room][1] = size;
	
	
	
	state = ALGORITHM.GENERATING;
}

if(keyboard_check(vk_shift))
{
	camera_set_view_size(view_camera[0], camera_get_view_width(view_camera[0]) - zoom, camera_get_view_height(view_camera[0]) - zoom);
}

if(keyboard_check(vk_control))
{
	camera_set_view_size(view_camera[0], camera_get_view_width(view_camera[0]) + zoom, camera_get_view_height(view_camera[0]) + zoom);
}

if(keyboard_check(vk_up))
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) - zoom);
}

if(keyboard_check(vk_down))
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + zoom);
}

if(keyboard_check(vk_left))
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) - zoom, camera_get_view_y(view_camera[0]));
}

if(keyboard_check(vk_right))
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + zoom, camera_get_view_y(view_camera[0]));
}