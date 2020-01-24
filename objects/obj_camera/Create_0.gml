// Custom Camera Properties
// Focus
focus_target_base	= undefined;
focus_target		= focus_target_base;
focus_point_x		= undefined;
focus_point_y		= undefined;
focus_time			= undefined;
move_to_factor_base	= 0.1;
move_to_factor		= move_to_factor_base;

// Zoom
zoom_factor_base	= 1;
zoom_factor			= zoom_factor_base;
zoom_factor_target	= undefined;
zoom_time			= undefined;
zoom_speed_base		= 0.1;
zoom_speed			= undefined;

// Alarms
alarm_focus_time		= 0;
alarm_zoom_time			= 2;

// General Camera Properties
width_base			= 960;
width				= width_base;
height_base			= 540;
height				= height_base;

if (exists(focus_target)) {
	x_to = focus_target.x;
	y_to = focus_target.y;
}
else {
	x_to = room_width  / 2;
	y_to = room_height / 2;
}
drag_x		= x_to;
drag_y		= y_to;
dragging	= false;

// Create Camera Object
camera	= camera_create();
viewmat = matrix_build_lookat(x, y, -room_height - 100, x, y, 0, 0, 1, 0);
projmat = matrix_build_projection_ortho(width * zoom_factor, height * zoom_factor, 1.0, 32000.0);
camera_set_view_mat(camera, viewmat);
camera_set_proj_mat(camera, projmat);
view_camera[0] = camera;