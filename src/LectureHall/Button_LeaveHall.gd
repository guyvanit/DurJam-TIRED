extends ClickButton


var counter = 0
var text = [ \
		"You consider leaving your lecture early...", \
		"You really need to start trying...", \
		"(Press E to leave the lecture)", \
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
			get_tree().change_scene("res://src/Cafe/Cafe.tscn")
			counter = text.size()
