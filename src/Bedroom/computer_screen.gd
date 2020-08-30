extends ClickButton

func on_click():
	print("Computer Screen!")
	# test
	$TurnOff.play()
	yield($TurnOff, "finished")
	get_tree().change_scene("res://src/Bedroom/Bedroom.tscn")
