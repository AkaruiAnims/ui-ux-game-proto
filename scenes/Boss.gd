extends Sprite2D
var default = load("res://assets/Boss/Boss_Health_v1.drawio.png")
var shot = load("res://assets/Boss/Boss_Health_v2.drawio.png")
var ult = load("res://assets/Boss/Boss_Health_v3.drawio.png")
var shot_ult = load("res://assets/Boss/Boss_Health_v4.drawio.png")

var isShot = false
var isUlt = false
var final = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Shoot") && isShot == false:
		isShot = true
		texture = shot
	
	if Input.is_action_pressed("Ultimate") && isUlt == false:
		isUlt = true
		texture = ult
	
	if isShot == true && isUlt == true && final == false:
		final = true
		texture = shot_ult
