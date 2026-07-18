extends Node
@onready var pause_audio_stream_player: AudioStreamPlayer = $PauseAudioStreamPlayer
@onready var un_pause_audio_stream_player: AudioStreamPlayer = $UnPauseAudioStreamPlayer

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		var is_pause = get_tree().paused
		if is_pause: un_pause_audio_stream_player.play()
		else: pause_audio_stream_player.play()
		get_tree().paused = not is_pause
