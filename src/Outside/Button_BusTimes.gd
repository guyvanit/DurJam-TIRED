extends ClickButton

var counter = 1

func on_click():
	$Label.show()
	print(counter)
	
	# could replace this by indexing array of texts
	# ^ could make a general script to implement this
	if counter == 1:
		$Label.text = "The next bus is in a while..."
		counter += 1
	elif counter == 2:
		$Label.text = "You're late as always..."
		counter += 1
	elif counter == 3:
		$Label.text = "Anxiousness sets in."
		counter += 1
	else:
		$Label.hide() 
		
