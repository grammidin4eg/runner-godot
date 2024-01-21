extends CharacterBody2D

@export var speed = 200
@export var range = 75
var start_transform = 0

func _ready():
	start_transform = position.y
	$AnimatedSprite2D.play()
	
func _physics_process(delta):
	if position.y < (start_transform + range) and position.y > (start_transform - range):
		velocity = transform.y * Input.get_axis("up", "down") * speed
	else:
		velocity = -velocity
	move_and_slide()
