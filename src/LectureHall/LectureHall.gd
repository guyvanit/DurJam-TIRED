extends Node2D

var music = load("res://assets/audios/music/William song 2.wav")

func _ready():
	if not GlobalScript.headphone:
		$HallAudio.play()
