/// @description Health and Cooldown Bar

draw_self();
if (instance_exists(obj_player_ship)) {

// HP drawing
draw_sprite_ext(spr_cooldown_bar, 0, x, y + 50, hp / 100, 1, 0, c_red, 1);

// Cooldown Bar Drawing
if (cooldown = true) {
	var _xscale = (alarm_get(0) / clTime) / cannons;
	draw_sprite_ext(spr_cooldown_bar, 0, x, y - 50, _xscale, 1, 0, c_white, 1);
}

// Sprite Drawing
var _health = (hp/hpMax)
if (_health >= 0.66) {
	image_index = 0;	
}
else if (_health < 0.66) && (_health > 0.33) {
	image_index = 1;
}
else if (_health <= 0.33) {
	image_index = 2;
}








} // This curly is for making sure that the player exists when drawing