extends CanvasModulate
var t

func _process(delta):
	if Singleton.hour > 0 and Singleton.hour < 2:
		color.r = 250
		color.g = 250
		color.b = 250
	elif Singleton.hour == 0:
		t = "morning"
	elif Singleton.hour == 3:
		t = "evening"

func _on_evening_morning_timeout():
	if t == "evening":
		if color.b > 1:
			color.g -= 1
			color.b -= 1
	if t == "morning":
		if color.b < 251 and color.g < 251:
			color.g += 1
			color.b += 1

func _on_Timer_timeout():
	$evening_morning.start()
