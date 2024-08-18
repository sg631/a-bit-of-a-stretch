extends Area2D

func _physics_process(delta: float) -> void:
	for body in get_overlapping_bodies():
		if body.editor_description == "Player":
			var scene = load("res://shop.tscn")
			var instance = scene.instantiate();
			$/root/game.add_child(instance)
