extends ClickButton

var counter = 1
var interaction = false

func on_click():
	$Label.show()
	print(counter)
	if counter == 1:
		$Label.text = "You notice a pretty flower..."
		counter += 1
	elif counter == 2:
		$Label.text = "Press E if you wish to take it"
		interaction = true
		
func _input(event):
	if Input.is_action_just_pressed('e') and interaction == true:
			$Sprite.hide() 
			print('Hidden')
		
