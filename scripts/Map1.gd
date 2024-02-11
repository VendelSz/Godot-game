extends Node2D


func _ready():
	pass


func _on_Spike_body_entered(body: Node) -> void:
	if body is KinematicBody2D:
		body.hit()




func _on_Finish_body_entered(body: Node) -> void:
	if body is KinematicBody2D:
		body.finish()
