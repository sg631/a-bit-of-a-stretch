extends Label
func _physics_process(delta: float) -> void:
	text = "Soul Energy: " + str(Autoload.growPoints)
