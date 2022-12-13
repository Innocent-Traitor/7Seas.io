/// @description Wander Change

if (tile_meeting(x, y, "Tiles_Ground") == true) {
	direction = direction - 180;
}

dirTar = irandom(360);
dirDiff = angle_difference(dirTar, image_angle);

alarm[7] = 300;








