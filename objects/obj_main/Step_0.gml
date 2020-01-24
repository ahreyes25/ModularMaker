switch (state) {
	#region Idle
	case "idle":
		if (keyboard_check_pressed(ord("C"))) {
			state	= "show_component_list";
			menu_x	= mouse_x;
			menu_y	= mouse_y;
		}
		break;
	#endregion
	
	#region Show Component List
	case "show_component_list":
		#region Get Largest Width And Height For Menu Row Sizing
		for (var i = sprites_to_skip + (menu_page * menu_page_size); i < sprites_to_skip + ((menu_page * menu_page_size) + menu_page_size); i++) {
			var _sprite = i;
			if (sprite_exists(_sprite))	{
				if (sprite_get_true_width(_sprite) > menu_row_sprite_width_max)
					menu_row_sprite_width_max	= sprite_get_true_width(_sprite);
				if (sprite_get_true_height(_sprite) > menu_row_sprite_height_max)
					menu_row_sprite_height_max	= sprite_get_true_height(_sprite);
			}	
			else
				break;
		}
		#endregion
		
		#region Update Menu Index
		menu_index = (menu_page * menu_page_size) + floor((mouse_y - menu_y) / menu_row_height) + sprites_to_skip;
		#endregion

		#region Move Menu
		if (mouse_check_button_pressed(mb_left) && !moving_menu) {
			var _click_range = 8;
			if (mouse_x > menu_x - _click_range && mouse_x < menu_x + _click_range && mouse_y > menu_y - _click_range && mouse_y < menu_y + _click_range)
				moving_menu = true;
		}
		else if (mouse_check_button_released(mb_left) && moving_menu)
			moving_menu = false;
		else if (moving_menu) {
			menu_x = mouse_x;
			menu_y = mouse_y;
		}		
		#endregion
		break;
	#endregion
}

#region Restart Room
if (keyboard_check_pressed(ord("R"))) {
	state = "idle";
	room_restart(); 
}
#endregion

#region Fullscreen
if (keyboard_check_pressed(vk_f5))
	window_set_fullscreen(!window_get_fullscreen());
#endregion

#region Exit
if (keyboard_check_pressed(vk_escape))
	game_end();
#endregion

#region Check For Double Clicks
if (mouse_check_button_pressed(mb_left)) {
	if (alarm[0] == -1)
		alarm[0] = double_click_time;
	else {
		alarm[0] = -1;
		
		#region Double Click on Menu
		if (mouse_touching_menu()) {
			camera_set_focus_point(menu_x + menu_width / 2, menu_y + menu_height / 2);
			camera_reset_zoom_factor();
		}
		#endregion
	}
}
#endregion

if (keyboard_check_pressed(vk_right))
	menu_page++;
if (keyboard_check_pressed(vk_left))
	menu_page--;













