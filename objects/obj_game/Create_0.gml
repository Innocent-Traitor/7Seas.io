/// @description 

randomise();

// Spawn Player
instance_create_layer(random(room_width), random(room_height), "Instances", obj_player_ship);

//Spawn Enemy
for(var i=0; i<30; i++) {
	instance_create_layer(random(room_width), random(room_height), "Instances", obj_enemy_ship);	
}













