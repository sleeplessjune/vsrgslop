extends AnimatedSprite2D


@export var key_name: String = ""
@onready var note_receptor: AnimatedSprite2D = $"."


# handles note receptor state (not/pressed)
func _process(delta):
	if Input.is_action_just_pressed(key_name):
		note_receptor.play("pressed")
	if Input.is_action_just_released(key_name):
		note_receptor.play("not_pressed")
	
