extends Button



func _pressed():
	get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")
	Global.current_score = 0
