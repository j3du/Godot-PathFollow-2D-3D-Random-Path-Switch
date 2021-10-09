extends Spatial

func _ready():
	pass # Replace with function body.

func _on_changeTrainRail(rail,train):
	var newRail:Path = get_node("Path_"+String(rail))
	var newOffset = newRail.curve.get_closest_offset(train.get_node("KinematicBody").global_transform.origin - newRail.global_transform.origin)
	train.get_parent().remove_child(train)
	newRail.add_child(train)
	train.offset = newOffset
