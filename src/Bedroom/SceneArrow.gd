extends ClickButton

func on_click():
	print("Bedroom Scene Change")
	
	# stop audio and end loop
	GlobalScript.audio.stop()
	
	# change scene to outside
	var new_scene
	if get_node("../../Bedroom").overslept:
		new_scene = "res://src/Cafe/Cafe.tscn"
	else:
		new_scene = "res://src/Outside/BusStop.tscn"
	get_tree().change_scene(new_scene)
