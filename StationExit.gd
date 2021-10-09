extends Area2D


export(int) var STATION_ID
signal changeTrainRail

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_StationExit_body_entered(body):
	if body.get_parent().atStation:
		#if randf()>0.5:
		body.get_parent().atStation = false
		emit_signal("changeTrainRail",STATION_ID,body.get_parent())
		print("exit station")
	else:
		print("ignoring station")
