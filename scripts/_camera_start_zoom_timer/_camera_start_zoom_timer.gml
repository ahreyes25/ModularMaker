if (abs(zoom_factor - zoom_factor_target) <= 1 && alarm_zoom_time == -1) {
	alarm[alarm_zoom_time] = zoom_time;
	zoom_time = undefined;
}