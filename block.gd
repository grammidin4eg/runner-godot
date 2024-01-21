extends RigidBody2D

@export var speed = 500

func _process(delta):
	linear_velocity += Vector2(-speed, 0) * delta 
