extends nav_component
class_name greedy_ghost

# the greedy ghost always chooses the space closest to its target.

func get_input():
	var newdirection = Vector2.ZERO
	
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
