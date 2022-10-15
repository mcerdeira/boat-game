extends Node

const GRAVITY = 7

func play_sound(stream: AudioStream, options:= {}) -> void:
	var audio_stream_player = AudioStreamPlayer.new()

	add_child(audio_stream_player)
	audio_stream_player.stream = stream
	
	for prop in options.keys():
		audio_stream_player.set(prop, options[prop])
	
	audio_stream_player.play()
	audio_stream_player.connect("finished", audio_stream_player, "queue_free")
