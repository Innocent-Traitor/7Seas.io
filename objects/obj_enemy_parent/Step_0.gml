/// @description Movement

// Tilemap Collision Check
if (tile_meeting(x, y, "Tiles_Ground") = true) {
	speed = speed / 5;
}

// Keep Ship In bounds
x = min(x, 4894);
x = max(x, 100);
y = min(y, 4894);
y = max(y, 100);












