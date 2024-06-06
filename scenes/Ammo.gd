extends Sprite2D
var default = load("res://assets/Ammo/Ammo_v1.drawio.png")
var shot = load("res://assets/Ammo/Ammo_v2.drawio.png")
var reloaded = load("res://assets/Ammo/Ammo_v3.drawio.png")

var isShot = false
var isReloaded = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Shoot") && isShot == false:
		isShot = true
		texture = shot
	
	if Input.is_action_pressed("Reload") && isReloaded == false && isShot == true:
		isReloaded = true
		texture = reloaded
		
	if Input.is_action_pressed("Exit"):
		isShot = false
		isReloaded = false
		texture = default
	
	
