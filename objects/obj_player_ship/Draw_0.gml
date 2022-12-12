/// @description Cooldown Bar

draw_self();
if (instance_exists(obj_player_ship)) {

if (cooldown = true) {
	var _xscale = alarm_get(0) / clTime;
	draw_sprite_ext(spr_cooldown_bar, 0, x, y - 50, _xscale, 1, 0, c_white, 1);
}











} // This curly is for making sure that the player exists when drawing