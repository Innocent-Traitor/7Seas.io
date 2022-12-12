/// @description Movement

// Move to mouse
if (point_distance(x, y, mouse_x, mouse_y) > 100) {
	move_towards_point(mouse_x, mouse_y, 3)
} else if (point_distance(x, y, mouse_x, mouse_y) > 50) {
	move_towards_point(mouse_x, mouse_y, 2)
} else if (point_distance(x, y, mouse_x, mouse_y) > 25) {
	move_towards_point(mouse_x, mouse_y, 1)
}
else speed = 0;

// Point Sprite towards mouse
image_angle = point_direction(x, y, mouse_x, mouse_y) + 90;

// Tilemap Collision Check
if (tile_meeting_precise(x, y, "Tiles_Ground") = true) {
	speed = speed / 5;
}














