/*
// Pick coin
image_xscale = 1.5;
image_yscale = 1.5;
randomize();
player = choose(1, 2);
if (player == 1)
	sprite_index = sCoin1;
else
	sprite_index = sCoin2;
image_index = 0;
image_speed = 0.7;
alarm[1] = 15;
alarm[2] = 60;
alarm[3] = 10;
audio_play_sound(soCoinLift, 0, 0);


heal	= part_system_create();
p		= part_type_create();
part_type_shape(p, pt_shape_square);
part_type_size(p, 0.01, 0.03, -0.005, 0.03);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 2, 4, -0.1, 1);
part_type_direction(p, 70, 110, 0, 10);
part_type_orientation(p, 0, 0, 0, 0, 0);
part_type_life(p, 30, 30);
part_type_color1(p, c_white);
*/