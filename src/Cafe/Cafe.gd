extends Node2D

func _ready():
	if not GlobalScript.headphone:
		$CafeMusic.play()
		$CafeAudio.play()
