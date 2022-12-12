/// @description Stop Timeline



if (pause == false) {
	pause = true;
	timeline_running = false;
	spd = speed;
	dir = direction;
	speed = 0;
}
else {
	pause = false;
	timeline_running = true;
	speed = spd;
	direction = dir;
}










