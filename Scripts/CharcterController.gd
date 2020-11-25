extends Spatial
export var mouse_sens = 0.5

onready var cam = $Camera
onready var character_mover = $CharactarMover
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	character_mover.init(self)

func _process(delta):
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()
	
	if Input.is_action_pressed("ui_left"):
		rotation_degrees.y += 3.0
		pass
	if Input.is_action_pressed("ui_right"):
		rotation_degrees.y -= 3.0
		pass
	var move_vec = Vector3.ZERO
	if Input.is_action_pressed("ui_up"):
		move_vec += Vector3.FORWARD
		
		pass
	elif Input.is_action_pressed("ui_down"):
		move_vec += Vector3.BACK
		pass
	character_mover.set_move_vec(move_vec)
	pass

func _physics_process(delta):
	
	pass

func _input(event):
	if event is InputEventMouseMotion:
		rotation_degrees.y -= mouse_sens * event.relative.x
		cam.rotation_degrees.x -= mouse_sens * event.relative.y
		cam.rotation_degrees.x = clamp(cam.rotation_degrees.x,-90,90)


