if (counter == 1) {
	// 1 - The player can open the safe's interface by pressing E when close to it
	if (instance_exists(obj_codInteract)) {
		show_debug_message("Test 1 passed :D");
	} else {
		show_debug_message("Test 1 failed :(");
	}
	
	counter = 0;
	runTests = false;
}

if (runTests == true) {
	++counter;
}