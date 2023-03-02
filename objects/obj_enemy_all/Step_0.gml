/// @description AI

// Grab the nearest instance 
var _inst = instance_nearest_special(x, y, all);


// Hunt if object is within 350 units and self has 20% hp left.
if (distance_to_object(_inst) <= 350) && (hp > hpMax / 5) mode = e_state.hunter;
// if less than 20% hp, they will run
else if (distance_to_object(_inst) <= 350) mode = e_state.runner; 
else mode = e_state.wander; // Wander there's no one nearby


switch (mode) {
	// Run the opposite direction of the closet object
	case e_state.runner: 
		image_angle = point_direction(x, y, _inst.x, _inst.y) - 180;
		direction = image_angle;
		motion_set(image_angle, 2 * spd);
	break;
	
	// Wander around if no one is nearby
	case e_state.wander:
		var _diff = angle_difference(dirTar, image_angle + 90);
		var _sign = sign(_diff);
		var _absolute = abs(_diff);
		image_angle += min(_absolute, lerpSpeed) * _sign;

		motion_set(image_angle, 2 * spd);
	break;
	
	// Hunt the nearest enemy
	case e_state.hunter:
		image_angle = point_direction(x, y, _inst.x, _inst.y);
		if (speed >= 0.1) speed -= .01;
		direction = image_angle;
		if (cooldown = false) {
			instance_create_layer(x + lengthdir_x(sprite_width/1.5, direction), y + lengthdir_y(sprite_width/1.5, direction), "Instances", obj_cannonball,{
				// Variables for the cannonball
				speed : 10, 
				direction : direction + random_range(-10, 10),
				range : range,
				damage : damage,
		});
	cooldown = true;
	alarm[0] = 120;
	}
	break;
	
}



// Inherit the parent event
event_inherited();

