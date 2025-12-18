extends AnimatedSprite2D


@export var lane_index: int
@export var key_name: String = ""
@onready var note_receptor: AnimatedSprite2D = $"."
@onready var note = preload("res://scenes/note.tscn")

func _ready():
	if not Global.CreateNote.is_connected(CreateNote):
		Global.CreateNote.connect(CreateNote)

# handles note receptor state (not/pressed)
func _process(delta):
	if Input.is_action_just_pressed(key_name):
		Global.NoteReceptorPress.emit(key_name, lane_index)
		note_receptor.play("pressed")
	if Input.is_action_just_released(key_name):
		note_receptor.play("not_pressed")
	
func CreateNote(button_name: String):
	if button_name == key_name:
		var note_inst = note.instantiate()
		get_tree().get_root().call_deferred("add_child", note_inst)
		note_inst.Setup(position.x)
