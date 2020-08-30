extends ClickButton

var counter = 1

func on_click():
	$Label.show()
	print(counter)
	
	if counter == 1:
		$Label.text = "You notice someone at the bus stop..."
		counter += 1
	elif counter == 2:
		#$Label.text = "Do you wish to talk to them or listen to music? "
		Label.text = "Should I try to talk to her...?"
		counter += 1
	elif counter == 3:
		#$Label.text = "Press 1 or 2"
		counter += 1
	else:
		$Label.hide() 
		
