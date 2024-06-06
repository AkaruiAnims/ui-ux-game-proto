extends Sprite2D
var default = load("res://assets/Health/Health_v1.drawio.png")
var healed = load("res://assets/Health/Health_v2.drawio.png")

var isHealed = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Heal") && isHealed == false:
		isHealed = true
		texture = healed
	
	if Input.is_action_pressed("Exit"):
		isHealed = false
		texture = default
