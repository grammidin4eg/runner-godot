extends CharacterBody2D

@export var speed = 400
@export var move_range = 75
var start_transform = 0

func _ready():
	start_transform = position.y
	$AnimatedSprite2D.play()
	
func _physics_process(delta):
	velocity = Vector2.RIGHT * speed
	# velocity = Vector2.RIGHT * speed * Input.get_axis("left", "right")
	move_and_slide()
