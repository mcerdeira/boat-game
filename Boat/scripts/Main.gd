extends Node2D
export var Main_Sfx : AudioStream

func _ready():
	Global.play_sound(Main_Sfx)
