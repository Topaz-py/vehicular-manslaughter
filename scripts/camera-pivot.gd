extends Spatial

onready var player = get_node('/root/main/player')
onready var camera = get_node('camera')
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var pos = player.get_translation()
	var self_pos = self.get_translation()
	var cam_pos = camera.get_translation()
	self_pos.z = pos.z
	cam_pos.z = pos.z
