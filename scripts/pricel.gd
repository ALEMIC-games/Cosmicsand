extends Sprite

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if visible:
			visible = false
		else:
			visible = true
	Singleton.position_pricel = global_position
