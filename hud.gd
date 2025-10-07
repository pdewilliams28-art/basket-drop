extends Control



var time: int
var score: int
# Called when the node enters the scene tree for the first time.
func show_message(text):
	$Score.text = text
	$Score.show()
	$Timer.start()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
