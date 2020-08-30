extends ClickButton

func on_click():
	print("Game Start")
	get_tree().change_scene("res://src/Bedroom/Bedroom.tscn")
