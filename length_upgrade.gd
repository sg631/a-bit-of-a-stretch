extends Button

func _pressed() -> void:
	if Autoload.growPoints >= 3 and Autoload.upgradeLength < 8:
		Autoload.upgradeLength += 1;
		Autoload.growPoints -= 3;
