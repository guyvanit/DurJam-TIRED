extends Node2D
var audio_loop = true
var music = load("res://assets/audios/music/William song 2.wav")

func _ready():
	$OutsideAudio.play()
