extends Area2D

func _physics_process(delta: float) -> void:
	for body in get_overlapping_bodies():
		if body.editor_description == "Player":
			if not get_parent().get_parent().has_node("ShopUI"):
				var scene = load("res://shop.tscn")
				var instance = scene.instantiate();
				var canvasLayer = get_parent().get_parent().get_node("HUD")
				canvasLayer.add_child(instance)
