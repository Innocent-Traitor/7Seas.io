/// @description Respawn Timer

// respawn Enemys every 10 seconds

for(var i=currentPlayers; i<maxPlayers; i++) {
	instance_create_layer(random_range(255, 4667), random_range(255, 4667), "Instances", obj_enemy_wander);	
	currentPlayers++;
}

alarm[0] = 600;











