// Primreo, agregar item (water) a inventario
obj_HUD.sizeInventory++;
obj_HUD.ListInventory[obj_HUD.sizeInventory-1] = 0 // 0 es aguita
obj_HUD.ListInvStr[obj_HUD.sizeInventory-1] = itemStr
// Luego, quitar el objeto del mapa
instance_deactivate_object(obj_water);