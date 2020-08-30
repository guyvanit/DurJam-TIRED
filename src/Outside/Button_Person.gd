extends ClickButton

var counter = 0
var text = [ \
		"You notice someone at the bus stop...", \
		"Should you try to talk to her..?", \
		"(Press 1 to talk, 2 to otherwise)", \
		"Girl: Who are you?? Go away!!", \
		"You put in your headphones, pretending not to notice her..." \
	]

func on_click():	
	if counter <= 2:
		$Label.text = text[counter]
		counter += 1
	elif counter < text.size():
		pass
	else:
		$Label.hide()

func _input(event):
	if counter == 3:
		if Input.is_key_pressed(KEY_1):
			$Label.text = text[3]
			counter = text.size()
		if Input.is_key_pressed(KEY_2):
			$Label.text = text[4]
			counter = text.size()
			
			# plays music audio instead
			var audio = get_node("../OutsideAudio")
			var scene = get_node("../../BusStop")
			audio.set_stream(scene.music)
			audio.stop()
			audio.play()
