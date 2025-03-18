extends Node2D
class_name anim_component

@export var sprite: AnimatedSprite2D
@export var move: move_component

func _process(delta):
	
	if move.direction == Vector2.UP: sprite.rotation = deg_to_rad(-90)
	if move.direction == Vector2.DOWN: sprite.rotation = deg_to_rad(90)
	if move.direction == Vector2.LEFT: sprite.rotation = deg_to_rad(180)
	if move.direction == Vector2.RIGHT: sprite.rotation = deg_to_rad(0)
	if move.isontile: sprite.pause()
	else: sprite.play()
	pass
