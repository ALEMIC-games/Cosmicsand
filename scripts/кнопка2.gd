extends Sprite
var press = false

func _on_Button_button_down():
	press = true

func _on_Button_button_up():
	press = false
	
func _physics_process(delta):
	if press == true:
		scale = Vector2(2.4, 1.4)
	else:
		scale = Vector2(2.5, 1.5)
