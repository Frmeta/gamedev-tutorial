extends Area2D


func _on_GameArea_body_exited(body):
	if (body.name == "BlueShip" or body.name == "RedShip"):
		
		print("Ship is outside game area!")
		yield(get_tree().create_timer(1), "timeout")
		
		get_tree().reload_current_scene()
