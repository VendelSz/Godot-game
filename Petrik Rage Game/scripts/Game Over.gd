extends Node2D

var phoneguy_audio_stream_player : AudioStreamPlayer
var stars_audio_stream_player : AudioStreamPlayer
var yipe_audio_stream_player : AudioStreamPlayer
var phoneguy_audio_stream : AudioStream
var stars_audio_stream : AudioStream
var yipe_audio_stream : AudioStream

func _ready() -> void:
	phoneguy_audio_stream_player = $phoneguy
	stars_audio_stream_player = $stars
	yipe_audio_stream_player = $yipe

	phoneguy_audio_stream = preload("res://assets/deathsounds/fakeyou_rvc_f6r1f23nfgd1dykq5k2fx5yktybvr2cz.wav")
	stars_audio_stream = preload("res://assets/deathsounds/Rah Band ~ Messages From The Stars 『Slowed & Reverb』.mp3")
	yipe_audio_stream = preload("res://assets/deathsounds/Yipe.mp3")

	phoneguy_audio_stream_player.stream = phoneguy_audio_stream
	stars_audio_stream_player.stream = stars_audio_stream
	yipe_audio_stream_player.stream = yipe_audio_stream
	
	randomize()
	var random_number = randi() % 3 + 1
	print("Random Number: ", random_number)
	if random_number == 1:
		phoneguy_audio_stream_player.play()
	if random_number == 2:
		stars_audio_stream_player.play()
	if random_number == 3:
		yipe_audio_stream_player.play()



func _on_Restart_pressed():
	get_tree().change_scene("res://scenes/Map0.tscn")


func _on_Menu_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")






	
