extends Node

var current_id: int = 0

func _ready():
	current_id = 0  # Initialize the counter

func get_unique_id() -> int:
	current_id += 1
	return current_id
