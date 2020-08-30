extends ClickButton

func on_click():
	print("Light Button")
	var dark = get_node("../Bedroom_dark")
	#print(GlobalScript.bedroom_lights)
	
	# if the light is on, turn the light off (enable dark)
	if GlobalScript.bedroom_lights:
		$SwitchOff.play()
		dark.show()
		GlobalScript.bedroom_lights = false
	# if the light is off, turn light on (disbale dark)
	else:
		$SwitchOn.play()
		dark.hide()
		GlobalScript.bedroom_lights = true
