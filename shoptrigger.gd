extends Area2D

func _physics_process(delta: float) -> void:
	for body in get_overlapping_bodies():
		if body.editor_description == "Player":
			get_parent().get_parent()
