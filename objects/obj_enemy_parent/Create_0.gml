/// @description Create Enemy

/* 
5% Hunter
15% Runner
10% Wander
70% All
*/
var _check = instance_nearest(x, y, obj_player_ship);	
if (distance_to_object(_check) <= 500){
	obj_game.currentPlayers--;
	instance_destroy(self);
	exit;
}

var _inst = instance_create_layer(random_range(255, 4667), random_range(255, 4667), "Instances", obj_enemy_all);
with(_inst) {
	image_index = choose(0, 4, 8, 12, 16);
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
	// Init Vars
	_inst.hp = hpMax / random_range(1, 2);
	_inst.cooldown = false;
}

instance_destroy(self);