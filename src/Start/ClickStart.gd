extends ClickButton

func on_click():
	print("Game Start")
	
	# plays audio then change scene
	GlobalScript.play_audio_next(GlobalScript.bird, true)
	get_tree().change_scene("res://src/Bedroom/Bedroom.tscn")
