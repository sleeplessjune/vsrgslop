extends VideoStreamPlayer

@onready var songstartdelay: Timer = $songstartdelay
@onready var mvplayer: VideoStreamPlayer = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	songstartdelay.start()

func _on_songstartdelay_timeout() -> void:
	mvplayer.play()
