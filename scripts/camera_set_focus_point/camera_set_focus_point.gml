/// @param x
/// @param y
/// @param duration*
/// @param move_factor*

var _camera = obj_camera;

#region Arguments
if (argument_count == 3) {
	var _x		= argument[0];
	var _y		= argument[1];
	var _time	= argument[2];
	var _factor = _camera.move_to_factor_base;
}
else if (argument_count == 4) {
	var _x		= argument[0];
	var _y		= argument[1];
	var _time	= argument[2];
	var _factor	= argument[3];
}
else {
	var _x		= argument[0];
	var _y		= argument[1];
	var _time	= -1;
	var _factor = _camera.move_to_factor_base;
}
#endregion

_camera.focus_point_x	= _x;
_camera.focus_point_y	= _y;
_camera.focus_time		= _time;
_camera.move_to_factor	= _factor;