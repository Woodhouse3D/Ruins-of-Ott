extends Node2D
class_name nav_component
# nav component is the parent class.
# the nav component decides where the ghost goes.
# it returns a vector representing the chosen direction of travel.


@export var move: move_component
var player: Node2D
var tilemap: TileMap

func _ready():
	pass
	player = get_tree().get_nodes_in_group("Player").pop_front()
	move = get_parent()
	tilemap = move.tilemap

func get_input() -> Vector2:
	return Vector2.ZERO

# function checks if the space is free to be moved to.
func is_valid() -> bool:
	return false
