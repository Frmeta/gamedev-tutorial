extends Area2D

onready var winText : Node = get_node("../WinText/")

func _ready():
	winText.visible = false

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip" or body.name == "RedShip"):
		
		print("Reached objective!")
		winText.visible = true
		
		yield(get_tree().create_timer(1), "timeout")
		
		get_tree().change_scene("res://scenes/Level2.tscn")

