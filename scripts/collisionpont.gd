extends Node2D

func _ready():
	Singleton.occupied += [str(round(global_position.x / 50) * 50, " ", round(global_position.y / 50) * 50)]
	
	Singleton.occupied += [str(round(global_position.x / 50) * 50 + 50, " ", round(global_position.y / 50) * 50)]
	Singleton.occupied += [str(round(global_position.x / 50) * 50 - 50, " ", round(global_position.y / 50) * 50)]
	Singleton.occupied += [str(round(global_position.x / 50) * 50, " ", round(global_position.y / 50) * 50 + 50)]
	Singleton.occupied += [str(round(global_position.x / 50) * 50, " ", round(global_position.y / 50) * 50 - 50)]
	
	Singleton.occupied += [str(round(global_position.x / 50) * 50 + 50, " ", round(global_position.y / 50) * 50 + 50)]
	Singleton.occupied += [str(round(global_position.x / 50) * 50 - 50, " ", round(global_position.y / 50) * 50 - 50)]
	Singleton.occupied += [str(round(global_position.x / 50) * 50 + 50, " ", round(global_position.y / 50) * 50 - 50)]
	Singleton.occupied += [str(round(global_position.x / 50) * 50 - 50, " ", round(global_position.y / 50) * 50 + 50)]


