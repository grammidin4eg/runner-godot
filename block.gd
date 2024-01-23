extends Area2D


@export var speed = 680

func _process(delta):
	move_local_x(-speed * delta)
	if position.x < 0:
		queue_free()
