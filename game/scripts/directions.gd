extends Node

#onready var g = get_parent()

"""""
	0 ---> left
	1 ---> center
	2 ---> right
"""

# (character name, array of key images - 3, array of image paths - 3, array of small image paths - 3)
# write_direction(char_name, keys, pic_paths, small_pics)

func _ready():
	#if g.name == "1":
		#print("1")
		#g.write_direction(global.character, 
		#	[false,true,false], 
		#	[null,"res://images/photos/Jesse/clinic_lobby_red.png",null], 
		#	[null,"res://images/photos/Jesse/small/small_clinic_lobby_red.png",null])
	#elif g.name == "2":
	#	print("2")
	pass
