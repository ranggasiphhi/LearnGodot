extends Node2D

signal my_signal(value, other_value)

func _on_Timer_timeout():
	get_node("Sprite").visible = !get_node("Sprite").visible
	
func _ready():
	$Timer.connect("timeout", self, "_on_Timer_timeout")
	emit_signal("my signal", true, 42)
