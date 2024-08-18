extends Button

func _pressed() -> void:
	if Autoload.growPoints >= 1:
		Autoload.upgradeLength += 1;
		Autoload.growPoints -= 1;
