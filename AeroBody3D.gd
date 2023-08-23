extends AeroBody3D

func _physics_process(delta):
	#control
	var input := Vector3(Input.get_axis("ui_down", "ui_up"), 0.0, Input.get_axis("ui_left", "ui_right"))
	
	$Elevator.rotation.x = input.x * 0.4
	
	$AileronL.rotation.x = input.z
	$AileronR.rotation.x = -input.z
