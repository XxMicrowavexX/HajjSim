extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rounds = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if rounds == 7:
		get_tree().change_scene("res://Assets/Scenes/Mount Arafa.tscn")


func _on_GreenLight_body_entered(body):
	if body.name == "Player":
		rounds += 1
