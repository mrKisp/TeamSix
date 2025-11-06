/// @description Insert description here
// You can write your code in this editor

//Creates sequential tutorial situations. Tutorial 1 talks about pressing E to pickup
//Tutorial 2 says Tab to Codex
//Tutorial 3 says to use jetpack to get to portal.
if(global.items.datapad == 1)
{
	tutorial_step_1 = false;
}
if(global.items.datapad == 2)
{
	tutorial_step_2 = true ;
}
if(global.items.datapad == 3)
{
	tutorial_step_3 = true;
	tutorial_step_2 = false;
}

