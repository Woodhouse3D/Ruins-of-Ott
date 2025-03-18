extends Node


# this script collates all tilemap data. it keeps track of where all the objects
# and tiles are. entities will talk to it constantly as part of their navigation.


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func player_pos(): # function returns player position on the tilemap.
	return Vector2.ZERO
