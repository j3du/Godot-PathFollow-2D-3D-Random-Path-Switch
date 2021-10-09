extends Node2D

func _ready():
	pass

func _on_changeTrainRail(rail,train):
	var newRail:Path2D = get_node("Path_"+String(rail))
	var newOffset = newRail.curve.get_closest_offset(train.get_node("KinematicBody2D").global_position - newRail.global_position)
	train.get_parent().remove_child(train)
	newRail.add_child(train)
	train.offset = newOffset
