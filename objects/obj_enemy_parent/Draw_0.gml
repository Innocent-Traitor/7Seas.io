/// @description Health Bar

draw_self();
if (instance_exists(obj_enemy_wander)) {
	
draw_sprite_ext(spr_cooldown_bar, 0, x, y + 50, hp / 100, 1, 0, c_red, 1);

}











