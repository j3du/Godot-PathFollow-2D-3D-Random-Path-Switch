extends Area


export(int) var STATION_ID
signal changeTrainRail

func _ready():
	pass 




func _on_StationExit3D_body_entered(body):
	if body.get_parent().atStation:
		body.get_parent().atStation = false
		emit_signal("changeTrainRail",STATION_ID,body.get_parent())
		print("exit station")
	else:
		print("ignoring station")
