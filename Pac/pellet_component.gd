extends Node2D
class_name pellet_component

@export var player: move_component
@export var tilemap: TileMap
@export var gridsize: int = 32

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tilemap = get_tree().get_nodes_in_group("tilemap").pop_front()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var current_tile = player.current_tile
	if tilemap.get_cell_source_id(1,current_tile) != -1:
		tilemap.erase_cell(1,current_tile)
		print("cell changed")
		pass
