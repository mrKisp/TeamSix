/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_Text) && has_been_read == false)
{
	//Creates a Message witha target message.
	instance_create_layer(0,0,"Background_Stuff", obj_Text)
	//New_Message is an Instance by instance we change in the room. 
	//Updates text box with message.
	obj_Text.message_displayed = new_message;
	alarm[0] = 60
}