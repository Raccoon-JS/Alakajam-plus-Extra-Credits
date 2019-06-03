extends Node

onready var g = get_parent()

func _ready():
	if g.name == "1":
		print("1")
	elif g.name == "2":
		print("2")
	pass
