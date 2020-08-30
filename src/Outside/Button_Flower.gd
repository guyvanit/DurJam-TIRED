extends ClickButton

var counter = 0
var text = [ \
		"You notice a pretty flower...", \
		"Maybe you should take it...", \
		"(Press E to take the flower)", \
		"You took the flower..." \
	]

func on_click():
	if counter <= 2:
		$Label.text = text[counter]
		counter += 1
	elif counter == text.size():
		$Label.hide()
		
func _input(event):
	if counter == 3:
		if Input.is_key_pressed(KEY_E):
			$Label.text = text[3]
			GlobalScript.has_flower = true
			counter = text.size()
