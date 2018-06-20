// Tests

if (runTests == true) {
	// 1 - The player can open the safe's interface by pressing E when close to it
	obj_player.x = 320;
	obj_player.y = 160;
	keyboard_key_press(69);
	keyboard_key_release(69);
	
	keyboard_key_press(81);
	keyboard_key_release(81);
}
