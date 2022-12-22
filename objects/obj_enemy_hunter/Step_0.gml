/// @description 


// Inherit the parent event
event_inherited();

// Grab the nearest instance 
var _inst = instance_nearest_special(x, y, all);

if (distance_to_object(_inst) > 250) {
	image_angle = point_direction(x, y, _inst.x, _inst.y);
	direction = image_angle;
	motion_set(image_angle, 2);
} 
else if (distance_to_object(_inst) <= 250) {
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
}