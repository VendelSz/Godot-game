extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const MAX_FALL_SPEED = 200
const MAX_SPEED = 80
const JUMP_FORCE = 300
const ACCEL = 10

var motion = Vector2()
var facing_right = true
var is_crouching = false

func _ready():
	pass

func _physics_process(delta):
	motion.y += GRAVITY
	if motion.y > MAX_FALL_SPEED:
		motion.y = MAX_FALL_SPEED

	if facing_right:
		$Sprite.scale.x = 1
	else:
		$Sprite.scale.x = -1

	motion.x = clamp(motion.x, -MAX_SPEED, MAX_SPEED)

	if Input.is_action_pressed("right"):
		motion.x += ACCEL
		facing_right = true
		if !is_crouching:
			$AnimationPlayer.play("Run")
	elif Input.is_action_pressed("left"):
		motion.x -= ACCEL
		facing_right = false
		if !is_crouching:
			$AnimationPlayer.play("Run")
	else:
		motion.x = lerp(motion.x, 0, 0.2)
		if !is_crouching:
			$AnimationPlayer.play("Idle")
			
	if Input.is_action_pressed("crouch"):
		is_crouching = true
		$AnimationPlayer.play("Crouch")
		$CollisionPolygon2D.set_disabled(true)
		$CrouchCollisionPolygon2D.set_disabled(false)
	else:
		is_crouching = false
		$CollisionPolygon2D.set_disabled(false)
		$CrouchCollisionPolygon2D.set_disabled(true)

	if is_on_floor():
		if Input.is_action_pressed("jump"):
			motion.y = -JUMP_FORCE
			
	if Input.is_action_pressed("esc"):
		get_tree().change_scene("res://scenes/Menu.tscn")
	

	motion = move_and_slide(motion, UP)

var i := 0.0
var is_hit := false
var is_finish := false

func hit() -> void:
	if is_hit:
		return
	is_hit = true
	get_tree().change_scene("res://scenes/GameOver0.tscn")
	
func finish() -> void:
	if is_finish:
		return
	is_finish = true
	get_tree().change_scene("res://scenes/Map1.tscn")



