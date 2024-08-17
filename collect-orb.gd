extends RigidBody2D

func _physics_process(delta: float) -> void:
	for body in get_colliding_bodies():
		if body.editor_description == "Player":
			print("TOUCHING PLAYER")
			get_parent().remove_child(get_parent().get_children()[0])
