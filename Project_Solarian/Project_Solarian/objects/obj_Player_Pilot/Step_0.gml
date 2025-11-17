// Decide which key is moving right (if any)
if (keyboard_check(move_key_right))
	right_input = (keyboard_check(move_key_right));
if (keyboard_check(alt_move_key_right))
	right_input = keyboard_check(alt_move_key_right);

// Decide which key is moving left (if any)
if (keyboard_check(move_key_left))
	left_input = (keyboard_check(move_key_left));
if (keyboard_check(alt_move_key_left))
	left_input = keyboard_check(alt_move_key_left);
// Decide which key is jumping (if any)
	jump = 0;
	if (keyboard_check_pressed(move_key_jump))
		jump = keyboard_check_pressed(move_key_jump);
	if (keyboard_check_pressed(alt_move_key_jump))
		jump = keyboard_check_pressed(alt_move_key_jump);
	
	// Jetpack alt key logic
	jpack = 0;
	if (keyboard_check(move_key_jump))
		jpack = keyboard_check(move_key_jump);
	if (keyboard_check(alt_move_key_jump))
		jpack = keyboard_check(alt_move_key_jump);

state();