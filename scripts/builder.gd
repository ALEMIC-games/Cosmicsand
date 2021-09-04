extends KinematicBody2D
var nothing
const SPEED = 30000
var s = Vector2()
var sit_rand_x = 0
var sit_rand_y = 0
onready var timervel = $Timervel
var timing1 = 2
var freedom = true
var spawnling = false

func _on_Timervel_timeout():
	timing1 += 1

func _process(delta):
	if timing1 % 2 == 0:
		randomize()
		sit_rand_x = rand_range(-10000, 10000)
		sit_rand_y = rand_range(-10000, 10000)
		if freedom == true:
			s = Vector2(sit_rand_x, sit_rand_y)
#система отсчёта таймера при помощи чётности переменной
func _physics_process(delta):
	if position != s:
		var vel = global_position.direction_to(s)
		look_at(vel)
		vel = move_and_slide(vel*delta*SPEED)
	if Input.is_action_pressed("skm"):
		spawn(gen)
	if Input.is_action_pressed("lkm"):
		spawn(wall)
	if Input.is_action_pressed("pkm"):
		spawn(gun)
	if spawnling is Object:
		if spawnling.global_position.distance_to(global_position) < 10:
			var spawnling1 = process_building.instance()
			get_parent().get_parent().add_child(spawnling1)
			timerbuild.start()
			spawnling1.global_position.x = round(spawnling.global_position.x / 50) * 50
			spawnling1.global_position.y = round(spawnling.global_position.y / 50) * 50
			timerbuild.start()
			spawnling = false
	
#перемещение строителя по вектору и строительство
var gun = preload("res://scns/Gun.tscn")
var wall = preload("res://scns/Wall.tscn")
var gen = preload("res://scns/Generator.tscn")
var spawnpoint = preload("res://scns/spawnpoint.tscn")
var process_building = false
var occupied = str("")
onready var timerbuild = $Timerbuild

func spawn(obj):
	occupied = [int(round(Singleton.position_pricel.x / 50) * 50), int(round(Singleton.position_pricel.y / 50) * 50)]
	if not occupied in Singleton.occupied and freedom == true:
		freedom = false
		Singleton.occupied += [occupied]
		s = Vector2(int(round(Singleton.position_pricel.x / 50) * 50), int(round(Singleton.position_pricel.y / 50) * 50))
		spawnling = spawnpoint.instance()
		get_parent().get_parent().add_child(spawnling)
		spawnling.global_position.x = round(Singleton.position_pricel.x / 50) * 50
		spawnling.global_position.y = round(Singleton.position_pricel.y / 50) * 50
		process_building = obj


func _on_Timerbuild_timeout():
	freedom = true
