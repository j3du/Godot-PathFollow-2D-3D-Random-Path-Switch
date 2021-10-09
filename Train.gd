extends PathFollow2D

export(bool) var atStation = false
export(float) var speed = 1000

func _physics_process(delta):
	offset += speed * delta
