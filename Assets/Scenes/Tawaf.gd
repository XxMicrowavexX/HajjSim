extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var i = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if i == 7:
		get_tree().change_scene("res://Assets/Scenes/BYE BYE HUMANS.tscn")


func _on_Area2D_body_entered(body):
