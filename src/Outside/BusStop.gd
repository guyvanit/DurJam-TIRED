extends Node2D
var audio_loop = true
var music = load("res://assets/audios/music/William song 2.wav")

func play_audio():
	while audio_loop:
		$OutsideAudio.play()
		yield($OutsideAudio, "finished")

func _ready():
	# $OutsideAudio.set_stream(music)
	play_audio()
