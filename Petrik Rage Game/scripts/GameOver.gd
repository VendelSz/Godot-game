extends Node2D

var aaahhh1_audio_stream_player : AudioStreamPlayer
var aaahhh2_audio_stream_player : AudioStreamPlayer
var augh1_audio_stream_player : AudioStreamPlayer
var augh2_audio_stream_player : AudioStreamPlayer
var nepityeregjel_audio_stream_player : AudioStreamPlayer
var retkesfranciagecik_audio_stream_player : AudioStreamPlayer

var aaahhh1_audio_stream : AudioStream
var aaahhh2_audio_stream : AudioStream
var augh1_audio_stream : AudioStream
var augh2_audio_stream : AudioStream
var nepityeregjel_audio_stream : AudioStream
var retkesfranciagecik_audio_stream : AudioStream

func _ready() -> void:
	aaahhh1_audio_stream_player = $aaahhh1
	aaahhh2_audio_stream_player = $aaahhh2
	augh1_audio_stream_player = $augh1
	augh2_audio_stream_player = $augh2
	nepityeregjel_audio_stream_player = $nepityeregjel
	retkesfranciagecik_audio_stream_player = $retkesfranciagecik

	aaahhh1_audio_stream = preload("res://assets/deathsounds/aaahhh1.mp3")
	aaahhh2_audio_stream = preload("res://assets/deathsounds/aaahhh2.mp3")
	augh1_audio_stream = preload("res://assets/deathsounds/augh1.mp3")
	augh2_audio_stream = preload("res://assets/deathsounds/augh2.mp3")
	nepityeregjel_audio_stream = preload("res://assets/deathsounds/ne pityeregjel.mp3")
	retkesfranciagecik_audio_stream = preload("res://assets/deathsounds/retkes francia gecik.mp3")

	aaahhh1_audio_stream_player.stream = aaahhh1_audio_stream
	aaahhh2_audio_stream_player.stream = aaahhh2_audio_stream
	augh1_audio_stream_player.stream = augh1_audio_stream
	augh2_audio_stream_player.stream = augh2_audio_stream
	nepityeregjel_audio_stream_player.stream = nepityeregjel_audio_stream
	retkesfranciagecik_audio_stream_player.stream = retkesfranciagecik_audio_stream
	
	randomize()
	var random_number = randi() % 6 + 1
	print("Random Number: ", random_number)
	if random_number == 1:
		aaahhh1_audio_stream_player.play()
	if random_number == 2:
		aaahhh2_audio_stream_player.play()
	if random_number == 3:
		augh1_audio_stream_player.play()
	if random_number == 4:
		augh2_audio_stream_player.play()
	if random_number == 5:
		nepityeregjel_audio_stream_player.play()
	if random_number == 6:
		retkesfranciagecik_audio_stream_player.play()


func _on_Restart_pressed():
	get_tree().change_scene("res://scenes/Map0.tscn")


func _on_Menu_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")






	
