extends Node

# global variables
var bedroom_lights = false

# create audio node
var audio = AudioStreamPlayer.new()
# load audios
var alarm = load("res://assets/audios/198841__bone666138__analog-alarm-clock.wav")
var bird = load("res://assets/audios/339326__inspectorj__bird-whistling-a.wav")

func _ready():
	audio.set_stream(alarm)
	audio.volume_db = 1
	audio.pitch_scale = 1
	add_child(audio)
	
func play_audio_next(next):
	audio.play()
	yield(audio, "finished")
	audio.set_stream(next)
	audio.play()
	
