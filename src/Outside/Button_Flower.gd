extends ClickButton

var counter = 0
var text = [ \
		"You notice a pretty flower...", \
		"Maybe you should take it...", \
		"(Press e to take the flower)" \
	]

func on_click():
	if counter < text.size():
		$Label.text = text[counter]
		counter += 1
	else:
		$Label.hide()
