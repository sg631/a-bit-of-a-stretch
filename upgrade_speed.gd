extends Button

func _pressed() -> void:
	if Autoload.growPoints >= 3 and Autoload.upgradeSpeed < 2:
		Autoload.upgradeSpeed += 0.25;
		Autoload.growPoints -= 3;
	
