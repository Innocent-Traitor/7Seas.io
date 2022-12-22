/// @description Wander Change

if (tile_meeting(x, y, "Tiles_Ground") == true) {
	direction = direction - 230;
}

dirTar = irandom(360);
lerpSpeed = random(6);

alarm[7] = random_range(100, 500);








