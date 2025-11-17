/// @description Insert description here
// You can write your code in this editor

//Simple animation to the box.
lerp_Progress += (1-lerp_Progress)/50;
text_progress += global.text_Speed;

x1 = lerp(x1, x1_Target, lerp_Progress);
x2 = lerp(x2, x2_Target, lerp_Progress);

//Pressing E clears the message and kills the object. 
if(keyboard_check_pressed(ord("E")))
{
	var _message_length = string_length(message_displayed);
	if (text_progress >= _message_length)
	{
		instance_destroy();
	}
	else
	{
		if(text_progress > 2)
		{
			text_progress = _message_length;
		}
	}
}