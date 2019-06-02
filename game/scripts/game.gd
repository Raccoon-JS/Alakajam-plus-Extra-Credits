extends Node

func _ready():
	if name == "1":
		if global.character == "Jesse":
			$background.color = global.red
		elif global.character == "James":
			$background.color = global.green
		else:
			$background.color = global.blue # To avoid error
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
