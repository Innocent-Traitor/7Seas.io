/// @description Button Drawing

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) {
	clicked = true;
}

if (mouse_check_button_released(mb_left)) {
	clicked = false;
	
	if (hovering) {
		activate_button();
	}
}

if (clicked) {
	if (global.mute) image_index = 3;
	else image_index = 1;
} else if (hovering) {
	if (global.mute) image_index = 2;
	else image_index = 0;
} else {
	if (global.mute) image_index = 2;
	else image_index = 0;
}












