// General
state						= "idle";
component_touching			= undefined;
component_selected			= undefined;

// World
grid_snap					= false;
grid_width					= 0;
grid_height					= 0;
tile_width					= 0;
tile_height					= 0;

// Component Menu
menu_index					= 0;
menu_page					= 0;
menu_page_size				= 3;

menu_x						= 0;
menu_y						= 0;
menu_width					= 0;
menu_height					= 0;
menu_row_sprite_width_max	= 0;
menu_row_sprite_height_max	= 0;
menu_row_width				= 0;
menu_row_height				= 0;
menu_row_height				= 0;
menu_row_padding_x			= 2;
menu_row_padding_y			= 2;
menu_scale					= 3;
menu_background_color		= c_white;
menu_background_alpha		= 0.8;
moving_menu					= false;

// How Many Sprites To Skip At The Beginning Of The Resource Tree
sprites_to_skip				= 1;

// Other
double_click_time			= 10;

room_goto(rm_main);