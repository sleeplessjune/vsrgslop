extends RichTextLabel

var default_text = "Combo"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.combo > 0:
		var text = str(default_text)
		self.text = (text)
	else:
		var text = str("")
		self.text = (text)
	
