extends Node2D

var music = load("res://assets/audios/music/William song 2.wav")

func _ready():
	$HallAudio.play()
