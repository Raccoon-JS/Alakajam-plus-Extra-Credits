extends Node

func _ready():
	$animation.play("fade")
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("left_mouse_button_click"):
		global.goto_scene("res://scenes/menu.tscn")
	pass

func _on_fade_animation_finished(anim_name):
	if anim_name == "fade":
		global.goto_scene("res://scenes/menu.tscn")
	pass # Replace with function body.
