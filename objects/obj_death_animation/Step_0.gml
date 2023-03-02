/// @description Animation


if (dir == 0) { // Sets the rotation direction
	spd = spd * -1;
	dir = 1;
	rot += spd;
	xscale -= .01;
	yscale -= .01;
	alpha -= 0.01;
} else {
	rot += spd;
	xscale -= .01;
	yscale -= .01;
	alpha -= 0.01;
}













