/// @description Shooting
if (cooldown = false) && (obj_sound_button.hovering = false) {
	// Shoot the amount of cannons the player has
	for(var i=cannons;i>0;i--) {
		// Shoot at the front of the ship
		instance_create_layer(x + lengthdir_x(sprite_width/1.5, direction), y + lengthdir_y(sprite_width/1.5, direction), "Instances", obj_cannonball,{
			// Variables for the cannonball
			speed : 10, 
			direction : direction + random_range(-10, 10),
			range : range,
			damage : damage,
		});
	}
	// Set the cooldown
	cooldown = true;
	alarm[0] = clTime * cannons;
}


/*
Bug: When the play is not moving and the mouse is within the ship,
shooting a cannonball can cause the object to spawn within the
ship, causing damage and death. Other it just shoots wildly
*/








