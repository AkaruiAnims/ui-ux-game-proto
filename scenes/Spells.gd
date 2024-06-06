extends Sprite2D
var default = load("res://assets/Spells/spellls_v1.drawio.png")
var ult = load("res://assets/Spells/spellls_v2.drawio.png")
var healed = load("res://assets/Spells/spellls_v3.drawio.png")
var ult_healed = load("res://assets/Spells/spellls_v4.drawio.png")

var isHealed = false
var isUlt = false
var final = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Ultimate") && isUlt == false:
			isUlt = true
			texture = ult
	
	if Input.is_action_pressed("Heal") && isHealed == false:
			isHealed = true
			texture = healed
	
	if isHealed == true && isUlt == true && final == false:
			final = true
			texture = ult_healed
	
