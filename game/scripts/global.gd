extends Node

var current_scene = null
var new_scene = null
var players
var character
var single_playthrough

# Colors
var red
var deep_red
var green
var deep_green
var blue
var deep_blue

func _ready():
	#Colors
	red = Color("#E3C5C1")
	deep_red = Color("#A26D66")
	green = Color("#C1E3D6")
	deep_green = Color("#419482")
	blue = Color("#C1DEE2")
	deep_blue = Color("#417D95")
	
	single_playthrough = 0
	
	players = 0
	character = "no one"
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)
	pass

func _input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()
	pass

func goto_scene(path):
	new_scene = ResourceLoader.load(path).instance()
	get_tree().get_root().add_child(new_scene)
	get_tree().set_current_scene(new_scene)
	current_scene.queue_free()
	current_scene = new_scene
	pass