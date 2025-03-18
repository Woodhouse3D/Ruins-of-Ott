extends nav_component
class_name player_input
# this class reads player input and returns a direction

func get_input():
	var newdirection = Vector2.ZERO
	if (move.isontile):
		if Input.is_action_pressed("ui_left"): newdirection = Vector2.LEFT
		else: if Input.is_action_pressed("ui_right"): newdirection = Vector2.RIGHT
		else: if Input.is_action_pressed("ui_up"): newdirection = Vector2.UP
		else: if Input.is_action_pressed("ui_down"): newdirection = Vector2.DOWN
	return newdirection
