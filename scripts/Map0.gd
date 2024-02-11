extends Node2D


func _ready():
	pass


func _on_Spike_body_entered(body: Node) -> void:
	if body is KinematicBody2D:
		body.hit()


func _enter_tree():
	if Checkpoint.last_position:
		$Player.global_position = Checkpoint.last_position


func _on_Checkpoint_body_entered(body):
	Checkpoint.last_position = global_position
