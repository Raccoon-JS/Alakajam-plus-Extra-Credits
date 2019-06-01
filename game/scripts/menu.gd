extends Node

var red = Color("#E3C5C1")
var deep_red = Color("#A26D66")
var green = Color("#C1E3D6")
var deep_green = Color("#419482")
var blue = Color("#C1DEE2")
var deep_blue = Color("#417D95")

# Called when the node enters the scene tree for the first time.
func _ready():
	normal_color()
	pass # Replace with function body.

func normal_color():
	$bg_and_title/background.color = blue
	$bg_and_title/title.modulate = deep_blue
	$button_space/buttons.modulate = deep_blue
	$bg_and_title/logo.modulate = deep_blue
	pass

func _on_quit_mouse_entered():
	$bg_and_title/background.color = red
	$bg_and_title/title.modulate = deep_red
	$button_space/buttons.modulate = deep_red
	$bg_and_title/logo.modulate = deep_red
	pass # Replace with function body.

func _on_quit_mouse_exited():
	normal_color()
	pass # Replace with function body.


func _on_start_mouse_entered():
	$bg_and_title/background.color = green
	$bg_and_title/title.modulate = deep_green
	$button_space/buttons.modulate = deep_green
	$bg_and_title/logo.modulate = deep_green
	pass # Replace with function body.

func _on_start_mouse_exited():
	normal_color()
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.

func _on_start_pressed():
	print("start the story")
	pass # Replace with function body.

func _on_credits_pressed():
	print("to the credits")
	pass # Replace with function body.
