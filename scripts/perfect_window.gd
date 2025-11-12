extends Area2D


@export var key_name: String = ""


#checking for if notecollision is in perfect_window
func _ready() -> void:
	monitoring = true

func _process(delta: float) -> void:
	#triggers check for if note is in perfect_window
	if Input.is_action_just_pressed(key_name):
		var overlapping_bodies = get_overlapping_bodies()
		
		if overlapping_bodies.size() > 0:
			print("perfect!")
			#delete note if hit
		else:
			print("nothing")
