extends TileMapLayer

# Load the scene you want to instantiate
var my_scene = preload("res://killcollidebox.tscn")

func _ready():
	var used_cells = get_used_cells()

	for cell in used_cells:
		var tile_id = get_cell_source_id(cell)
		if tile_id != -1:
			# Retrieve the tile's data and check for the custom data 'death'
			var tile_data = get_cell_tile_data(cell)
			if tile_data != null and tile_data.get_custom_data("death"):
				var instance = my_scene.instantiate()
				instance.position = map_to_local(cell)
				add_child(instance)
