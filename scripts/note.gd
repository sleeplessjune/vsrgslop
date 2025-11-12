extends Sprite2D

#basic note scroll function by Luera: https://www.youtube.com/watch?v=bXOTSNvchWI

@export var key_name: String = ""
@onready var notecollision: CollisionShape2D = $RigidBody2D/notecollision


#note scroll speed
@export var scroll_speed: float = 4

# spawn position
var init_y_pos: float = -360

func _init():
	set_process(false)

# note scroll physics
func _process(delta):
	global_position += Vector2(0, scroll_speed)
	notecollision.global_position = global_position
	

func Setup(target_x: float):
	global_position = Vector2(target_x, init_y_pos)
	
	
	set_process(true)
