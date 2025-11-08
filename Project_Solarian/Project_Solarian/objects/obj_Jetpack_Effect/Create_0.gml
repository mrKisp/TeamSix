
//Ok, so creation of the system and particle system
//part_system creates the... machine that spits it out.
jetpack_system = part_system_create();

//This should create the effect that spawns from the machine.
jetpack = part_type_create();


//Variables related to making the effect.
size = 1;
alpha = .5;
color = c_white;
life = 60;
speed = 2;
direction = 270;

//Details of the Jetpack Flume.
part_type_shape(jetpack, pt_shape_smoke)
var _gamespeed = game_get_speed(gamespeed_fps);
part_type_life(jetpack, _gamespeed*.5, _gamespeed * 1);
part_type_size(jetpack,.01,.05,.0075,.1);
part_type_scale(jetpack,1,1);
part_type_colour1(jetpack,color);
part_type_alpha1(jetpack, alpha);
//part_type_speed(jetpack, .1, 1, 1, 1);
part_type_direction(jetpack,270,270,1,1);
part_type_gravity(jetpack, 0.02, 270);

/*
Example:
global.p1 = part_type_create();
part_type_shape(global.p1, pt_shape_square);
part_type_size(global.p1, 1, 3, 0, 0);
part_type_scale(global.p1, 1, 1);
part_type_colour1(global.p1, c_white);
part_type_alpha2(global.p1, 1, 0);
part_type_speed(global.p1, 2, 4, 0, 0);
part_type_direction(global.p1, 0, 180, 0, 0);
part_type_gravity(global.p1, 0.20, 270);
part_type_orientation(global.p1, 0, 0, 0, 0, 1);
part_type_blend(global.p1, 1);
part_type_life(global.p1, 15, 60);
*/

