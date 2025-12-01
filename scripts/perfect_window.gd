extends Area2D


@export var key_name: String = ""
var perfect = 100
var add_combo = 1
var perfect_judgement = "Perfect!"

#checking for if notecollision is in perfect_window
func _ready() -> void:
	monitoring = true

func _process(delta: float) -> void:
	#triggers check for if note is in perfect_window
	if Input.is_action_just_pressed(key_name):
		var overlapping_bodies = get_overlapping_bodies()
		
		if overlapping_bodies.size() > 0:
			var myparent = overlapping_bodies[0].get_parent()
			myparent.queue_free()
			Global.current_score += perfect
			Global.combo += add_combo
			Global.recent_judgement = perfect_judgement
			print("perfect!")
