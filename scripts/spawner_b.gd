extends Position2D

var b = preload("res://scns/Unit_builder.tscn")
func spawn():
	var spawnling = b.instance()
	get_parent().add_child(spawnling)
	spawnling.z_index = 20
	spawnling.global_position = global_position
	Singleton.cokey -= 10
func _on_Button_pressed():
	if Singleton.cokey > 9:
		spawn()
