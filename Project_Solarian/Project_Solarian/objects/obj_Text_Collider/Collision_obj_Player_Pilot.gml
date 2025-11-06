/// @description Insert description here
// You can write your code in this editor

//This simple setup turns on the layers that have tutorial text. Thoguh the UI Tutorials don't have
//their text for whatever reason. Will need to investigate further to identify why it is the case.
if (tutorial_step_1 = true && tutorial_step_2 = false && tutorial_step_3 = false)
{
	layer_set_visible("UI_Tutorial_1", true);
}

if (tutorial_step_2 = true && tutorial_step_1 = false && tutorial_step_3 = false)
{
	layer_set_visible("UI_Tutorial_2", true);
	layer_set_visible("UI_Tutorial_1", false);
}

if (tutorial_step_3 = true && tutorial_step_1 = false && tutorial_step_2 = false)
{
	layer_set_visible("UI_Tutorial_3", true);
	layer_set_visible("UI_Tutorial_2", false);
}
