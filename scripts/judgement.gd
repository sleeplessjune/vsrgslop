extends RichTextLabel


func _process(delta: float) -> void:
	var text = str(Global.recent_judgement)
	self.text = (text)
