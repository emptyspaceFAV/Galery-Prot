extends Camera

export var mouse_sens = 0.5

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(delta):
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()
	
	if Input.is_action_pressed("ui_left"):
		rotation_degrees.y += 3.0
		pass
	if Input.is_action_pressed("ui_right"):
		rotation_degrees.y -= 3.0
		pass
	
	pass

func _input(event):
	if event is InputEventMouseMotion:
		rotation_degrees.y -= mouse_sens * event.relative.x
		rotation_degrees.x -= mouse_sens * event.relative.y
		rotation_degrees.x = clamp(rotation_degrees.x,-90,90)
	

