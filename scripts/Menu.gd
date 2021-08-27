extends Sprite

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if visible:
			visible = false
		else:
			visible = true

func _on_Button_pressed():
	get_tree().quit()
