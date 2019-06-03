extends Node

func _ready():
	$music.play()
	set_process(true)
	pass

func _process(delta):
	if delta:
		if !$music.playing:
			$music.play()
	pass

func _on_return_pressed():
	global.goto_scene("res://scenes/menu.tscn")
	pass # Replace with function body.
