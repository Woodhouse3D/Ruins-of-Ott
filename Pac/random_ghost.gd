extends nav_component
class_name random_ghost


# completely random output, except if the new direction is the one we already moved in.
func get_input():
	var newdirection = Vector2.ZERO
	while (newdirection == Vector2.ZERO or move.direction == newdirection or tilemap.get_cell_tile_data(0,move.current_tile + newdirection) != null):
		match (randi_range(0,3)):
			0:
				newdirection = Vector2.RIGHT
			1:
				newdirection = Vector2.UP
			2:
				newdirection = Vector2.LEFT
			3:
				newdirection = Vector2.DOWN
	return newdirection
