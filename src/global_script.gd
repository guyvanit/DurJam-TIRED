extends Node

# global variables
var bedroom_lights = false
var audio_loop = false
var has_flower = false

# create audio node
var audio = AudioStreamPlayer.new()
# load audios
var alarm = load("res://assets/audios/198841__bone666138__analog-alarm-clock.wav")
var bird = load("res://assets/audios/339326__inspectorj__bird-whistling-a.wav")

func _ready():
	
	# add AudioStreamPlayer child node
	audio.set_stream(alarm)
	audio.volume_db = 1
	audio.pitch_scale = 1
	add_child(audio)
	
	bird.set("loop", true)
	
func play_audio_next(next, next_loop):
	audio_loop = true
	
	audio.play()
	yield(audio, "finished")
	audio.set_stream(next)
	
	# if next_loop true, loop next audio
	if next_loop:
		
		# loops audio until audio_loop set to false
		while audio_loop:
			audio.play()
			yield(audio, "finished")
			if(not audio_loop):
				break

	audio_loop = false
