extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		$AnimationPlayer.play("Idle")
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		$AnimationPlayer.play("Idle")
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		$AnimationPlayer.play("Idle")
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		$AnimationPlayer.play("Idle")
		velocity.y -= 1
	if velocity == Vector2(0, 0):
		$AnimationPlayer.play("Walk")
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
