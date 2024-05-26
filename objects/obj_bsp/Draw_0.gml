if(state == ALGORITHM.GENERATING)
{
	for(var _i = 0; _i < array_length(rooms); _i++)
	{
		if(_i == starting_room)
		{
			draw_set_color(c_red);
		}
		
		else
		{
			draw_set_color(c_white);
		}
		
		draw_rectangle(rooms[_i][2] + margin, rooms[_i][3] + margin, rooms[_i][2] + rooms[_i][0] - margin, rooms[_i][3] + rooms[_i][1] - margin, false);
		if(_i != array_length(rooms) - 1)
		{
			draw_set_color(c_green);
			draw_line(rooms[_i][2] + rooms[_i][0] / 2, rooms[_i][3] + rooms[_i][1] / 2, rooms[_i + 1][2] + rooms[_i + 1][0] / 2, rooms[_i + 1][3] + rooms[_i + 1][1] / 2);
		}
	}
}