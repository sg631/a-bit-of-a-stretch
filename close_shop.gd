extends Button

func _pressed() -> void:
	for child in get_parent().get_children():
		Autoload.closeShop()
	print("Closing shop..")
