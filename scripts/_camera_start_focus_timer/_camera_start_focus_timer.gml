if (defined(focus_time) && x == xprevious && y == yprevious && alarm_focus_time == -1) {
	alarm[alarm_focus_time] = focus_time;
	focus_time = undefined;
}