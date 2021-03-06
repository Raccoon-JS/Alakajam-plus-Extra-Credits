extends Node

func _ready():
	$music.play()
	$background/squares/tween.interpolate_property($background/squares/green,"margin_left",0.0,600.0,0.9,Tween.TRANS_CIRC,Tween.EASE_IN)
	pass # Replace with function body.

func _process(delta):
	if delta:
		if !$music.playing:
			$music.play()
	pass

func gone_buttons():
	$many_players.queue_free()
	pass

func to_the_single_playing_game():
	global.goto_scene("res://scenes/1_player_game.tscn")
	pass

func _one_player_pressed():
	global.players = 1
	$many_players.visible = false
	$background/squares/tween.start()
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
		global.players = 2
		gone_buttons()
		global.goto_scene("res://scenes/2_players_game.tscn")
	pass # Replace with function body.

func _on_green_square_tween_completed(object, key):

	if object.name == "green" and key == ":margin_left":
		$background/squares/James_button.visible = true
		$background/squares/Jesse_button.visible = true
		$background/squares/James_eye.visible = true
		$background/squares/Jesse_eye.visible = true
	pass # Replace with function body.

func _on_Jesse_button_mouse_entered():
	$animation.play("jesse_eye_large")
	pass # Replace with function body.

func _on_Jesse_button_mouse_exited():
	$animation.play_backwards("jesse_eye_large")
	pass # Replace with function body.

func _on_Jesse_button_pressed():
	global.character = "Jesse"
	$background/squares/tween.start()
	to_the_single_playing_game()
	pass # Replace with function body.

func _on_James_button_mouse_entered():
	$animation.play("james_eye_large")
	pass # Replace with function body.

func _on_James_button_mouse_exited():
	$animation.play_backwards("james_eye_large")
	pass # Replace with function body.

func _on_James_button_pressed():
	global.character = "James"
	to_the_single_playing_game()
	pass # Replace with function body.
