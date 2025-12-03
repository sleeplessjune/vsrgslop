extends RichTextLabel


func _process(delta: float) -> void:
	if Global.combo > 0:
		var text = str(Global.combo)
		self.text = (text)
	else:
		var text = str("")
		self.text = (text)
