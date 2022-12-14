/// @description Shooting
if (cooldown = false) && (obj_sound_button.hovering = false) {
	// Shoot the amount of cannons the player has
	for(var i=cannons;i>0;i--) {
		// Shoot at the front of the ship
		var _radians = direction * pi/180;
		instance_create_layer(x + sprite_height/1.9 * cos(-_radians), y + sprite_height/1.9 * sin(-_radians), "Instances", obj_cannonball,{
			// Variables for the cannonball
			speed : 10, 
			direction : image_angle + random_range(250, 290),
			range : obj_player_ship.range,
			damage : obj_player_ship.damage,
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








