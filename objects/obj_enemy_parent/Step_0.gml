/// @description Movement

// Tilemap Collision Check
if (tile_meeting(x, y, "Tiles_Ground") = true) {
	if (speed <= 0.5) speed = speed - 0.1;
}

// Keep Ship in bounds
if (x <= 99) x = 100;
if (x >= 4894) x = 4893;
if (y <= 99) y = 100;
if (y >= 4894) y = 4893;











