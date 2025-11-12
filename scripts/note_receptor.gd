extends AnimatedSprite2D

#note creation on keypress function by Luera: https://www.youtube.com/watch?v=bXOTSNvchWI

@export var key_name: String = ""
@onready var note_receptor: AnimatedSprite2D = $"."
@onready var note = preload("res://scenes/note.tscn")


# handles note receptor state (not/pressed)
func _process(delta):
	if Input.is_action_just_pressed(key_name):
		CreateNote()
		note_receptor.play("pressed")
	if Input.is_action_just_released(key_name):
		note_receptor.play("not_pressed")

# temporary note creation process for testing
func CreateNote():
	var fk_inst = note.instantiate()
	get_tree().get_root().call_deferred("add_child", fk_inst)
	fk_inst.Setup(position.x)
	
