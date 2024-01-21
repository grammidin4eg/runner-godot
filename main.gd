extends Node2D

func _on_spawn_timer_timeout():
	const BLOCK = preload("res://block.tscn")
	var new_block = BLOCK.instantiate()
	new_block.position = $SpawnMarker.position
	add_child(new_block)
