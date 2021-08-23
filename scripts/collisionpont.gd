extends Node2D

func _ready():
	Singleton.occupied += [[int(global_position.x), int(global_position.y)]]

	Singleton.occupied += [[int(global_position.x + 50), int(global_position.y)]]
	Singleton.occupied += [[int(global_position.x - 50), int(global_position.y)]]
	Singleton.occupied += [[int(global_position.x), int(global_position.y + 50)]]
	Singleton.occupied += [[int(global_position.x), int(global_position.y - 50)]]
	
	Singleton.occupied += [[int(global_position.x + 50), int(global_position.y + 50)]]
	Singleton.occupied += [[int(global_position.x - 50), int(global_position.y - 50)]]
	Singleton.occupied += [[int(global_position.x + 50), int(global_position.y - 50)]]
	Singleton.occupied += [[int(global_position.x - 50), int(global_position.y + 50)]]
