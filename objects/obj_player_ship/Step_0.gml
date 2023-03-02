/// @description Movement

// Move to mouse
if (shopping = false) {
	if (point_distance(x, y, mouse_x, mouse_y) > 100) {
		move_towards_point(mouse_x, mouse_y, 3*spd)
	} else if (point_distance(x, y, mouse_x, mouse_y) > 50) {
		move_towards_point(mouse_x, mouse_y, 2*spd)
	} else if (point_distance(x, y, mouse_x, mouse_y) > 25) {
		move_towards_point(mouse_x, mouse_y, 1*spd)
	}
	else speed = 0;
}

// Point Sprite towards mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);
direction = image_angle;

// Tilemap Collision Check
if (tile_meeting_precise(x, y, "Tiles_Ground") = true) {
	speed = speed / 5;
}

// Keep Ship In bounds
x = min(x, 4894);
x = max(x, 100);
y = min(y, 4894);
y = max(y, 100);

// Merchant Interaction
if (shoppingCooldown = false) {
	if (distance_to_object(obj_merchant) <= 300) {
		shopping = true;
	//	if speed >= 0 speed -= 0.02;
	}
}


// Debug Levels
if (keyboard_check_pressed(vk_numpad1)){
	if (hpMax < 500) hpMax += 100;
	else if (hpMax >= 500) hpMax = 500;
}
else if (keyboard_check_pressed(vk_numpad2)){
	if (range > 1) range -= 1;
	else if (range <= 1) range = 1;
}
else if (keyboard_check_pressed(vk_numpad3)){
	if (damage < 5) damage += 1;
	else if (damage >= 5) damage = 5;
}
else if (keyboard_check_pressed(vk_numpad4)){
		if (spd < 1.5) spd += 0.1;
		else if (spd >= 1.5) spd = 1.5;
}
else if (keyboard_check_pressed(vk_numpad5)){
		if (cannons < 3) cannons += 1;
		else if (cannons >= 3) cannons = 3;
}







