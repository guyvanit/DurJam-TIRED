extends ClickButton

func on_click():
	print("Bedroom Scene Change")
	
	# stop audio and end loop
	GlobalScript.audio.stop()
	GlobalScript.audio_loop = false
	
	# change scene to outside
	get_tree().change_scene("res://src/Outside/BusStop.tscn")
