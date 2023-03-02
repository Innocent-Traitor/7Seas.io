/// @description Create Enemy

/* 
The parent only handles the spawning and common logic. 
Specific logic such as movement is handled by the enemy object it's self.
*/


// Checks to see if the player is within 500 units
var _check = instance_nearest(x, y, obj_player_ship);	
if (distance_to_object(_check) <= 500){
	//If there is a player nearby, die
	obj_game.currentPlayers--;
	instance_destroy(self);
	exit;
} else {

// Determines the spawn probablity
var _spawn = random_weighted(55, 20, 25, 10);
// Take the result of the random_weighted function,
// Then reassign _spawn to the specific object
switch (_spawn) {
	case 0:
		var _spawn = obj_enemy_all;
	break;
	case 1:
		var _spawn = obj_enemy_wander;
	break;
	case 2:
		var _spawn = obj_enemy_runner;
	case 3:
		var _spawn = obj_enemy_hunter;
	break;
}


var _inst = instance_create_layer(x, y, "Instances", _spawn);
with(_inst) {
	image_index = choose(0, 4, 8, 12, 16);
	// I don't remember what Double Jepordary means, so I just won't touch it
	dJep2 = false; // Double Jepordary for the sprites
	dJep3 = false; // Double Jepordary for the sprites
	for(var i=0;i<4;i++){
		// Generates a weighted upgrade level for hpMax, Range, Damage, and Speed
		var _ran = random_weighted(45, 25, 15, 10, 5);
		switch (i){
		case 0:
			switch (_ran){
				case 0:
				hpMax = 100;
				break;
				case 1:
				hpMax = 200;
				break;
				case 2:
				hpMax = 300;
				break;
				case 3:
				hpMax = 400;
				break;
				case 4:
				hpMax = 500;
				break;
			}
		case 1:
			switch (_ran){
				case 0:
				range = 5;
				break;
				case 1:
				range = 4;
				break;
				case 2:
				range = 3;
				break;
				case 3:
				range = 2;
				break;
				case 4:
				range = 1;
				break;
			}
		case 2:
			switch (_ran){
				case 0:
				damage = 1;
				break;
				case 1:
				damage = 2;
				break;
				case 2:
				damage = 3;
				break;
				case 3:
				damage = 4;
				break;
				case 4:
				damage = 5;
				break;
			}
		case 3:
			switch (_ran){
				case 0:
				spd = 1;
				break;
				case 1:
				spd = 1.1;
				break;
				case 2:
				spd = 1.2;
				break;
				case 3:
				spd = 1.3;
				break;
				case 4:
				spd = 1.4;
				break;
			}
		}
	}
	// Generates weighted random for cannons
	var _ran = random_weighted(60, 30, 10);
	switch (_ran) {
		case 0:
		cannons = 1;
		break;
		case 1:
		cannons = 2;
		break;
		case 2:
		cannons = 3;
		break;
	}
	// Init Vars for enemy object
	_inst.hp = hpMax / random_range(1, 2);
	_inst.cooldown = false;
}
// Destroy the parent instance, all AI Logic is handled by the actual enemy objects
instance_destroy(self);
}