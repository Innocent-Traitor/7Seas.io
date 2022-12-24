/// @description Movement

// Grab the nearest instance 
var _inst = instance_nearest_special(x, y, all);

// Run away
if (distance_to_object(_inst) <= 350) mode = state.runner;
else mode = state.wander;


switch (mode) {
	case state.runner: 
		image_angle = point_direction(x, y, _inst.x, _inst.y) - 180;
		direction = image_angle;
		motion_set(image_angle, 2 * spd);
	break;
	
	case state.wander:
		var _diff = angle_difference(dirTar, image_angle + 90);
		var _sign = sign(_diff);
		var _absolute = abs(_diff);
		image_angle += min(_absolute, lerpSpeed) * _sign;

		motion_set(image_angle, 2 * spd);
	break;
	
}

// Inherit the parent event
event_inherited();