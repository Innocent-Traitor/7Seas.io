/// @description Health Bar

draw_self();
if (instance_exists(self)) {
// Health Bar Drawing
var _amount = (hp/hpMax)
draw_sprite_ext(spr_cooldown_bar, 0, x, y + 50, _amount, 1, 0, c_red, 1);

// Sprite Drawing
var _health = (hp/hpMax)
if (_health < 0.66) && (_health > 0.33) && (dJep2 = false) {
	image_index++;	
	dJep2 = true; 
}
else if (_health <= 0.33) && (dJep3 = false) {
	image_index++;	
	dJep3 = true; 
}

}











