extends Node2D

var play_music = false
var audio_loop = true

func _ready():
	
	var music = load("res://assets/audios/music/William song 2.wav")
	
	while audio_loop:
		if play_music:
			$OutsideAudio.set_stream(music)
		$OutsideAudio.play()
		yield($OutsideAudio, "finished")
	
