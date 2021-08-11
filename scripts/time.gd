extends Label
var d = 1
var h = 0
var m = 0
var s = 0

func _process(delta):
	text = str(d, " DAY  ", h, ":", m, ":", s)
	Singleton.hour = h

func _on_Day_timeout():
	d += 1

func _on_Hour_timeout():
	if h < 5:
		h += 1
	else:
		h = 0

func _on_Min_timeout():
	if m < 5:
		m += 1
	else:
		m = 0

func _on_Sec_timeout():
	if s < 5:
		s += 1
	else:
		s = 0
