extends Position2D

var b = preload("res://scns/Unit_builder.tscn")
var press = false

func spawn1():
	var spawnling = b.instance()
	get_parent().add_child(spawnling)
	spawnling.z_index = 20
	spawnling.global_position = global_position - Vector2(200, 0)
	Singleton.cokey -= 10
	
func spawn2():
	var spawnling = b.instance()
	get_parent().add_child(spawnling)
	spawnling.z_index = 20
	spawnling.global_position = global_position + Vector2(200, 0)
	Singleton.cokey -= 10

func _on_Button_button_down():
	press = true
	if press == true and Singleton.cokey > 19:
		spawn1()
		spawn2()

func _on_Button_button_up():
	press = false


func _on_Timer_timeout():
	if press == true and Singleton.cokey > 19:
		spawn1()
		spawn2()
