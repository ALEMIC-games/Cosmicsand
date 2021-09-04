extends Sprite
var esc_timer = true

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel") and esc_timer == true:
		esc_timer = false
		if visible:
			visible = false
		else:
			visible = true
		$Esc.start()
	Singleton.position_pricel = global_position


func _on_Esc_timeout():
	esc_timer = true
