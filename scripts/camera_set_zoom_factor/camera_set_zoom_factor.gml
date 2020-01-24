/// @param zoom_factor
/// @param duration*
/// @param zoom_speed*

var _camera = obj_camera;

#region Arguments
if (argument_count == 2) {
	var _zoom	= argument[0];
	var _time	= argument[1];
	var _speed  = _camera.zoom_speed_base;
}
else if (argument_count == 3) {
	var _zoom	= argument[0];
	var _time	= argument[1];
	var _speed	= argument[2];
}
else {
	var _zoom	= argument[0];
	var _time	= -1;
	var _speed	= _camera.zoom_speed_base;
}
#endregion

// Round Zoom to Tens Place
_zoom = round((_zoom * 100) / 10) / 10;

_camera.zoom_factor_target	= _zoom;
_camera.zoom_time			= _time;
_camera.zoom_speed			= (defined(_speed)) ? _speed : _camera.zoom_speed_base;