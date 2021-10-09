extends PathFollow


export(bool) var atStation = false
export(float) var speed = 10

func _physics_process(delta):
	offset += speed * delta
