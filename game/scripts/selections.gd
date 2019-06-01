extends Node

func _ready():
	pass # Replace with function body.

func gone_buttons():
	$many_players.queue_free()
	pass

func _one_player_pressed():
	global.players = 1
	$many_players.visible = false
	$background/green_square/tween.interpolate_property($background/green_square/green,"margin_left",0.0,600.0,0.9,Tween.TRANS_CIRC,Tween.EASE_IN)
	$background/green_square/tween.start()
	pass # Replace with function body.

func _two_players_pressed():
	global.players = 2
	$animation.play("gone")
	pass # Replace with function body.

func _on_tween_started(object, key):
	if object.name == "green" and key == "margin_left":
		gone_buttons()
	pass # Replace with function body.

func _on_animation_animation_finished(anim_name):
	if anim_name == "gone":
		gone_buttons()
	pass # Replace with function body.
