extends Node2D

const generate_range = 100

func _on_spawn_timer_timeout():
	const BLOCK = preload("res://block.tscn")
	var new_block = BLOCK.instantiate()
	new_block.position = $SpawnMarker.position
	new_block.position.y += randi() % generate_range
	new_block.connect("body_entered", _on_hit)
	add_child(new_block)

func _on_hit(body):
	print("!!! on hit !!!", body)
	get_tree().paused = true


#TODO: окно окончания игры и рестарт
