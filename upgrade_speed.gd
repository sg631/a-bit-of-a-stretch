extends Button

func _pressed() -> void:
	if Autoload.growPoints >= 2:
		Autoload.upgradeSpeed += 1;
		Autoload.growPoints -= 2;
	
