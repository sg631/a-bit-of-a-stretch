extends Button

func _pressed() -> void:
	if Autoload.growPoints >= 2:
		Autoload.upgradeEfficiency *= 0.9;
		Autoload.growPoints -= 2;
