extends Button

func _pressed() -> void:
	if Autoload.growPoints >= 3:
		Autoload.upgradeSpeed += 0.25;
		Autoload.growPoints -= 3;
	
