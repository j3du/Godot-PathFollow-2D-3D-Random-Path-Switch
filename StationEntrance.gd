extends Area2D

export(int) var STATION_ID
signal changeTrainRail

func _ready():
	randomize()



func _on_StationEnterance_body_entered(body):
	if !body.get_parent().atStation:
		if randf()>0.5:
			body.get_parent().atStation = true
			emit_signal("changeTrainRail",STATION_ID,body.get_parent())
			print("arriving at station")
		else:
			print("ignoring station")
