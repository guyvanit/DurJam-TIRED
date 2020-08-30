extends ClickButton

var counter := 0
var text = [ \
		"You already slept 20 hours last night...", \
		"You are also late for your lectures (again)...", \
		"Maybe you should actually try to go this time...", \
		"(Press E to go to sleep, Don't otherwise)", \
		"You slept past all your lectures...", \
		"At least now you won't have to worry about facing your classmates...", \
		"You feel relieved..."
	]

func _ready():
	$Label.add_color_override("font_color", Color(1,1,1,1))

func on_click():
	print("Sleep Button")
	
	if counter <= 3:
		$Label.text = text[counter]
		counter += 1
	elif counter >= 5:
		if counter < text.size():
			$Label.text = text[counter]
			counter += 1
		else:
			$Label.hide()

func _input(event):
	if counter == 4:
		if Input.is_key_pressed(KEY_E):
			get_node("../../Bedroom").overslept = true
			$Label.text = text[counter]
			counter += 1
		
