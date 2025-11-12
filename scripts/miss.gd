extends Area2D


func _on_body_entered(body: Node2D) -> void:
	print("miss!")
	#delete note when enters this body
