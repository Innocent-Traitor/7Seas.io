/// @description Movement

var _diff = angle_difference(dirTar, image_angle + 90);
var _sign = sign(_diff);
var _absolute = abs(_diff);
image_angle += min(_absolute, lerpSpeed) * _sign;

motion_set(image_angle - 90, spd);


// Inherit the parent event
event_inherited();

