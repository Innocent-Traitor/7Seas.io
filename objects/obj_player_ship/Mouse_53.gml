/// @description Shooting
if (cooldown = false) {
	instance_create_layer(x, y, "Instances", obj_cannonball,{
		speed : 10, 
		direction : image_angle + random_range(260, 280)
	});
	cooldown = true;
	alarm[0] = clTime;
}











