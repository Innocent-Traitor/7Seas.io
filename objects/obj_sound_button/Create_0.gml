/// @description 

// Inherit the parent event
event_inherited();

// Mute sounds
activate_button = function() {
	global.mute = !global.mute;
	if (global.mute) audio_set_master_gain(0, 0);
	else audio_set_master_gain(0, 1);
}
