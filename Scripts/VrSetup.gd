extends ARVROrigin

func _ready():
	var VR = ARVRServer.find_interface("OpenVR")
	if VR and VR.initialize():
		get_viewport().arvr = true
		pass
	
	OS.vsync_enabled = false
	Engine.target_fps = 90
	pass 
