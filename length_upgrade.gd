extends Button

func _pressed() -> void:
	if Autoload.growPoints >= 3:
		Autoload.upgradeLength += 1;
		Autoload.growPoints -= 3;
