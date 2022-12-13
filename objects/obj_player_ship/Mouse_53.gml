/// @description Shooting
if (cooldown = false) {
	var _radians = direction * pi/180;
	instance_create_layer(x + sprite_height/1.9 * cos(-_radians), y + sprite_height/1.9 * sin(-_radians), "Instances", obj_cannonball,{
		speed : 10, 
		direction : image_angle + random_range(260, 280)
	});
	cooldown = true;
	alarm[0] = clTime;
}











