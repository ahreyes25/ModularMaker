// Draw Background
draw_sprite_tiled(spr_back_dark, 0, -room_width, -room_height);

switch (state) {
	#region Show Component List
	case "show_component_list":	
		
		#region Draw List
		for (var i = sprites_to_skip + (menu_page * menu_page_size); i < sprites_to_skip + ((menu_page * menu_page_size) + menu_page_size); i++) {	
			
			var _sprite = i;
			if (sprite_exists(_sprite)) {
				var _x = menu_x;
				var _y = menu_y + ((i - (sprites_to_skip + (menu_page * menu_page_size))) * menu_row_height);
			
				// Draw Frame
				draw_set_color(menu_background_color);
				draw_set_alpha(menu_background_alpha);
				draw_rectangle(_x, _y, _x + menu_row_width, _y + menu_row_height, false);
				draw_set_color(c_white);
				draw_set_alpha(1.0);
		
				// Draw Highlight
				if (i == menu_index && !moving_menu) {
					draw_set_color(c_dkgray);
					draw_set_alpha(0.5);
					draw_rectangle(_x, _y, _x + menu_row_width, _y + menu_row_height, false);
					draw_set_alpha(1.0);
				}
				
				// Draw Line Split
				draw_set_color(c_black);
				draw_rectangle(_x, _y - 1, _x + menu_row_width, _y + 1, false);
	
				// Draw Resource Sprites
				draw_set_color(c_white);
				var _sprite_center_x = (sprite_get_width(_sprite)  / 2) * menu_scale;
				var _sprite_center_y = (sprite_get_height(_sprite) / 2) * menu_scale;
				draw_sprite_ext(_sprite, 0, _x + menu_row_width / 2 - _sprite_center_x, _y + menu_row_height / 2 - _sprite_center_y, menu_scale, menu_scale, 0, c_white, 1);	
				
				// Draw Resource Text
				draw_set_halign(fa_right);
				draw_set_valign(fa_center);
				var _text = sprite_get_name(_sprite);
				draw_text(_x - 10, _y + menu_row_height / 2, _text);
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
			}
			else
				break;
		}
		#endregion
		
		#region Move Component List Node
		draw_set_color(c_maroon);
		draw_rectangle(menu_x - 4, menu_y - 4, menu_x + 4, menu_y + 4, false);
		#endregion
		break;
	#endregion
}