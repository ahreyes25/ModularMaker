/// @param target
/// @param duration*
/// @param move_factor*

var _camera = obj_camera;

#region Arguments
if (argument_count == 2) {
	var _target = argument[0];
	var _time	= argument[1];
	var _factor = _camera.move_to_factor_base;
}
else if (argument_count == 3) {
	var _target = argument[0];
	var _time	= argument[1];
	var _factor	= argument[2];
}
else {
	var _target = argument[0];
	var _time	= -1;
	var _factor = _camera.move_to_factor_base;
}
#endregion

_camera.focus_target	= _target;
_camera.focus_time		= _time;
_camera.move_to_factor	= _factor;