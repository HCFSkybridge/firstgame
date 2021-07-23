extends Control

onready var new_pause_state = false

func _input(event):
	if event.is_action_pressed("pause"):
		new_pause_state = not new_pause_state
		get_tree().paused = new_pause_state
		visible = new_pause_state
