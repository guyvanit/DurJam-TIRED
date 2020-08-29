extends ClickButton

func on_click():
	print("Computer Button")
	get_tree().change_scene("res://src/Bedroom/computer_screen.tscn")
