extends Node3D
const ad_lerp = 20
@export var default_pos:Vector3
@export var ad_pos:Vector3
@export var camera_path: NodePath
var vis = false
var camera : Camera3D 

var def_view = 70.0
var ad_view =20.0

# Called when the node enters the scene tree for the first time.
func _ready():
	camera = get_node(camera_path)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("aim"):
		transform.origin = transform.origin.lerp(ad_pos, ad_lerp * delta) 
		camera.fov = lerp(camera.fov,ad_view,ad_lerp*delta)
		vis = true
		if vis ==true:
			self.visible = false
	else:
		transform.origin = transform.origin.lerp(default_pos, ad_lerp * delta)
		camera.fov = lerp(camera.fov,def_view,ad_lerp*delta)
		self.visible = true


		
		
