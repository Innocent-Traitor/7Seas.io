/// @description Init Vars

// Get random seed
randomise();

// Set Player Count
#macro maxPlayers 30
currentPlayers = 0;

// Spawn Player
//instance_create_layer(random_range(255, 4667), random_range(255, 4667), "Instances", obj_player_ship);
currentPlayers += 1;

// State Machine Init
enum e_state {
	wander,
	hunter,
	runner
}

// Spawn Enemy
for(var i=currentPlayers; i<maxPlayers; i++) {
	instance_create_layer(random_range(255, 4667), random_range(255, 4667), "Instances", obj_enemy_parent);
	currentPlayers++;
}

// Start respawn timer
alarm[0] = 600;












