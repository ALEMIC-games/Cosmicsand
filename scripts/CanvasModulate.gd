extends CanvasModulate
var t

func _process(delta):
	if Singleton.hour > 0 and Singleton.hour < 2:
		color.r = 255
		color.g = 255
		color.b = 255
	elif Singleton.hour == 0:
		t = "morning"
	elif Singleton.hour == 3:
		t = "evening"
	Color(color)

func _on_evening_morning_timeout():
	if t == "evening":
		if color.b > 200 and color.g > 200:
			color.g -= 1
			color.b -= 1
		elif color.b != 30 and color.g != 30:
			color.r -= 1
			color.g -= 1
			color.b -= 1
		elif color.r != 30:
			color.r -= 1
			
	if t == "morning":
		if color.b < 200 and color.g < 200:
			color.r += 1
			color.g += 1
			color.b += 1
		elif color.r < 255:
			color.r += 1
		else:
			color.g += 1
			color.b += 1
			
func _on_Timer_timeout():
	$evening_morning.start()
