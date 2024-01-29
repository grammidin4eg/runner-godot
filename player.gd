extends CharacterBody2D

@export var speed = 400

func _ready():
	$AnimatedSprite2D.play()
	
func _physics_process(delta):
	velocity = Vector2.RIGHT * speed
	# velocity = Vector2.RIGHT * speed * Input.get_axis("left", "right")
	move_and_slide()
