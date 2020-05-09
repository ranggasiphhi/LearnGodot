extends Panel

var s;

func _ready():
	get_node("Button").connect("pressed", self, "_on_Button_pressed")
	s = Sprite.new()
	add_child(s)
	
	
func _on_Button_pressed():
	get_node("Label").text = "HELLO!"
