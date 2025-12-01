extends Area2D


@export var key_name: String = ""
var great = 50
var add_combo = 1
var great_judgement = "Great!"

#checking for if notecollision is in perfect_window
func _ready() -> void:
	monitoring = true

func _process(delta: float) -> void:
	#triggers check for if note is in perfect_window
	if Input.is_action_just_pressed(key_name):
		var overlapping_bodies = get_overlapping_bodies()
		
		if overlapping_bodies.size() > 0:
			print("great.")
			Global.current_score += great
			Global.combo += add_combo
			Global.recent_judgement = great_judgement
			var myparent = overlapping_bodies[0].get_parent()
			myparent.queue_free()
