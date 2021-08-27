extends Sprite

func _on_Button_gui_input(event):
	visible = true


func _on_Button_mouse_exited():
	visible = false

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		visible = false
