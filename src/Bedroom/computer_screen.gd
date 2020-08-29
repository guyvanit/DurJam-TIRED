extends ClickButton

func on_click():
	print("Computer Screen!")
	get_tree().change_scene("res://src/Bedroom/Bedroom.tscn")
