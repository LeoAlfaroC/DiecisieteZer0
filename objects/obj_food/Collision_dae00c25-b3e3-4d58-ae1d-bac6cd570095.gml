// Primreo, agregar item (water) a inventario
obj_HUD.sizeInventory++;
obj_HUD.ListInventory[obj_HUD.sizeInventory-1] = 1 // 0 es aguita
// Luego, quitar el objeto del mapa
instance_deactivate_object(obj_food);