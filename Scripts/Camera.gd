extends Camera

export var mouse_sens = 0.5

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotation_degrees.y -= mouse_sens * event.relative.x
		rotation_degrees.x -= mouse_sens * event.relative.y
		rotation_degrees.x = clamp(rotation_degrees.x,-90,90)
