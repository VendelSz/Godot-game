extends Area2D

var questionmark = false

func _ready():
	connect("body_entered", self, '_on_Interactable_body_entered')
	connect("body_exited", self, '_on_Interactable_body_exited')

func _process(delta):
	$QuestionMark.visible = questionmark

func _on_Interactable_body_entered(body):
	if body.name == 'Player':
		questionmark = true
		if Input.is_action_pressed("interact"):
			get_tree().change_scene("res://scenes/GameOver.tscn")

func _on_Interactable_body_exited(body):
	if body.name == 'Player':
		questionmark = false
