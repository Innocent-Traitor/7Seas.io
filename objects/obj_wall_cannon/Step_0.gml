/// @description Shooting

var _inst = instance_nearest_special(x, y, all);

if (distance_to_object(_inst) <= 300) {
	direction = point_direction(x, y, _inst.x, _inst.y);
	if (cooldown = false) {
		instance_create_layer(x + lengthdir_x(sprite_width/1.5, direction), y + lengthdir_y(sprite_width/1.5, direction), "Instances", obj_cannonball,{
			// Variables for the cannonball
			speed : 10, 
			direction : direction + random_range(-10, 10),
			range : 5,
			damage : 0.5,
		});
		cooldown = true;
		alarm[0] = 180;
	}
}
