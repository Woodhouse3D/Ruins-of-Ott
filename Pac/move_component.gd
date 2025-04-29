extends Node2D
class_name move_component

@export var tilemap: TileMap
@export var nav: nav_component
@export var gridsize: int = 32
@export var debugtarget: Node2D
@export var speed: float = 2

var current_tile = Vector2.ZERO # currenttile is current position in the tilemap
var target_tile = Vector2.ZERO # targetpos is where the entity is going
var isontile: bool = true # value for if the entity is on a tile or moving.
var direction = Vector2.ZERO # the input from the nav system
var last_direction = Vector2.ZERO # the last input from the nav system
var facing = Vector2.RIGHT # the direction t


var lerpcounter: float = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	current_tile = Vector2(position.x / gridsize, position.y / gridsize)
	target_tile = current_tile
	tilemap = get_tree().get_nodes_in_group("tilemap").pop_front()
	pass # Replace with function body.


# player input
# start by getting input. then see if it is valid
# if it is, start moving toward the selected tile

func can_move(direction):
	pass

func _physics_process(delta: float) -> void:
	
	# snaps entity to grid if they stop moving
	if (position.distance_to(target_tile * gridsize) <= 0.1):
		position = target_tile * gridsize
		current_tile = target_tile
		last_direction = direction
		direction = Vector2.ZERO
		isontile = true
	
	#direction = Vector2.ZERO
	var newdirection = nav.get_input()
	
	if (isontile and newdirection != Vector2.ZERO and newdirection != -last_direction):
		direction = newdirection
		if tilemap.get_cell_tile_data(0,current_tile + direction) == null:
			target_tile = current_tile + direction
			debugtarget.global_position = target_tile
			lerpcounter = 0
			isontile = false
	
	debugtarget.global_position = target_tile * gridsize
	
	if (position != target_tile):
		position = position.move_toward(target_tile * gridsize, speed)
	
