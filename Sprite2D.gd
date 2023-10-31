extends Sprite2D
func _ready():
	self.visible=false
func _process(delta):
		if Input.is_action_pressed("aim"):
			self.visible=true
		else:
			self.visible=false
			
			
