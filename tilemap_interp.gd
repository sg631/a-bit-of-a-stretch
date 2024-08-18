extends TileMapLayer

#func _process(delta: float) -> void:
	#for cord in get_used_cells():
		##print(get_cell_tile_data(cord).get_custom_data("death"))
		#if not get_cell_tile_data(cord).get_collision_polygon_points(0, 0).is_empty():
			#if get_parent().get_node("Player").position.x == 3:
				#null
	#if get_parent().get_node("Player"):
		##bro
		#null
func _init() -> void:
	print(get_coords_for_body_rid(rid_from_int64(64)))
	print(get_cell_source_id(Vector2i(3, 3)))
