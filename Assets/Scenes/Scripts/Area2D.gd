extends Area2D


var mouseEntered = false
var i = 0

func _process(delta):
	if i == 7:
		get_tree().change_scene("res://Assets/Scenes/Tawaf.tscn")

func _input(event):
	if mouseEntered and event.is_pressed() and event.button_index == BUTTON_LEFT:
		i += 1

func _on_Area2D_mouse_entered():
	mouseEntered = true


func _on_Area2D_mouse_exited():
	mouseEntered = false
