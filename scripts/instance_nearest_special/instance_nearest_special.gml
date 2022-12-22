/// @func instance_nearest_special(x, y, obj)
/// @desc Grabs the nearest instance that isn't:
/// Itself, Cannonballs, or GUI items
/// @param real x
/// @param real y
/// @param id Instance
{

function instance_nearest_special(x, y, obj){

    instance_deactivate_object(self);
	instance_deactivate_object(obj_cannonball);
	instance_deactivate_object(obj_sound_button);
	instance_deactivate_object(obj_wall_cannon);
    var _inst = instance_nearest(argument0, argument1, argument2);
    instance_activate_object(self);
	instance_activate_object(obj_cannonball);
	instance_activate_object(obj_sound_button);
	instance_activate_object(obj_wall_cannon);
    return _inst;
}
}