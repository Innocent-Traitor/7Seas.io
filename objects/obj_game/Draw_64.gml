/// @description 
if (instance_exists(obj_player_ship)) {
draw_text(100, 100, string_concat("X: ", obj_player_ship.x, " Y: ", obj_player_ship.y));
draw_text(100, 120, "HP: " + string(obj_player_ship.hp));
draw_text(100, 140, "Speed: " +string(obj_player_ship.speed));
draw_text(100, 160, "FPS: " + string(fps));

draw_text(1200, 100, "HP Level:" + string(obj_player_ship.hpMax));
draw_text(1200, 120, "Range: " + string(obj_player_ship.range));
draw_text(1200, 140, "Damage: " + string(obj_player_ship.damage));
draw_text(1200, 160, "Spd Level: "  + string(obj_player_ship.spd));
draw_text(1200, 180, "Cannons: " + string(obj_player_ship.cannons));
}

if (instance_exists(obj_cannonball)) {
draw_text(100, 200, "Speed: " + string(obj_cannonball.speed));
}











