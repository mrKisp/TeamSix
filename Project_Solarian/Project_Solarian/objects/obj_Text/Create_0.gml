/// @description Insert description here
// You can write your code in this editor

//First Coordinate of Box
x1 = 256;
y1 = 128;
//Second Coordinate of Box
x2 = 416;
y2 = 256;

x1_Target = 0;
x2_Target = 416;

lerp_Progress = 0;
text_progress = 0;

message_displayed = "Welcome to Solarian! This is a text box,\n where you'll see useful tips.\nPress E to dismiss text boxes";
//Tutorial has a lot of different box types and uses frames to make it work. This just needs to be 
//Zero for us. 
background = 0;

alarm[0] = 600;