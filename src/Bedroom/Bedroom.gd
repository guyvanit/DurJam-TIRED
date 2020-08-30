extends Node2D

func _ready():
	
	var dark = get_node("Bedroom_dark")
	print(GlobalScript.bedroom_lights)
	if GlobalScript.bedroom_lights:
		dark.hide()
	else:
		dark.show()
		
