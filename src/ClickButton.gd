extends Area2D
class_name ClickButton

#func _physics_process(delta):
	# add animation so button moves up and down (do later)

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()

func on_click():
	print("Parent Click")
