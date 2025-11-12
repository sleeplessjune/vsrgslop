extends Button



# moves to test game scene
func _pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/example_scene.tscn")
