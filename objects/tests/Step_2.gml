if (counter == 1) {
	// 1 - The player can open the safe's interface by pressing E when close to it
	if (instance_exists(obj_codInteract)) {
		show_debug_message("Test 1 passed :D");
			instance_destroy(obj_codInteract);
	} else {
		show_debug_message("Test 1 failed :(");
	}
instance_destroy(obj_codInteract);
	
}
	
if (counter == 2) {
	//2 - An alarm appears when the player is close to an interactable
	if(obj_testInteract.isClose == true) {
	show_debug_message("Test 2 passed :D");
	} else {
		show_debug_message("Test 2 failed :(");
	}
	instance_destroy(obj_codInteract);
}

if (counter == 3) {
	obj_HUD.sizeInventory++;
	obj_HUD.ListInventory[obj_HUD.sizeInventory-1] = 0; // 0 is water-bottle
	obj_HUD.ListInvStr[obj_HUD.sizeInventory-1] = obj_water.itemStr;
	
	obj_HUD.sizeInventory++;
	obj_HUD.ListInventory[obj_HUD.sizeInventory-1] = 1; // 1 is food-bar
	obj_HUD.ListInvStr[obj_HUD.sizeInventory-1] = obj_food.itemStr;
	
	obj_HUD.drawListInventory = true;
	if(obj_HUD.sizeInventory != 0) {
	show_debug_message("Test 3 passed :D");
	} else {
		show_debug_message("Test 3 failed :(");
	}
	runTests = false;
	counter = 0;
	obj_player.Create;
}

if (runTests == true) {
	++counter;
}