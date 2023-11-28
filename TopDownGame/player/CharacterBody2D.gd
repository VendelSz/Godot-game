extends CharacterBody2D

@export var normal_speed = 100
@export var sprint_speed = 175  # Speed when sprinting
@export var friction = 0.8
@export var acceleration = 0.1

func get_input():
	var input = Vector2()
	var speed_multiplier = 1.0  # Default speed multiplier

	if Input.is_action_pressed('sprint'):
		speed_multiplier = 1.75  # Sprinting speed multiplier when Shift is pressed

	if Input.is_action_pressed('right'):
		input.x += 1
	if Input.is_action_pressed('left'):
		input.x -= 1
	if Input.is_action_pressed('down'):
		input.y += 1
	if Input.is_action_pressed('up'):
		input.y -= 1

	return input.normalized() * speed_multiplier

func _physics_process(delta):
	var direction = get_input()

	if direction != Vector2.ZERO:
		velocity = direction * normal_speed
	else:
		velocity = velocity * friction

	move_and_slide()
