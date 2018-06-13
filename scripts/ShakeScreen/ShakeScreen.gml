/// @description Shake the screen by a given size and for a given time
// This function is the function that is called whenever we want to shake the screen

var s = argument0; // screen shake size
var t = argument1; // screen shake time/duration

oCameraController.shakeSize = s;
oCameraController.shakeScreen = true;
oCameraController.alarm[0] = t;