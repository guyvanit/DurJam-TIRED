extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func on_click():
	$Label.show()
	#clicked = true
	if counter == 2:
		$Label.text = "The next bus is in a while..."
	if counter == 3:
		$Label.text = "You're late as always..."
	if counter == 4:
		$Label.text = "Anxiousness sets in."
	if counter == 5: 
		$Label.hide() 
		clicked = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
