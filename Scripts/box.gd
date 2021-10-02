extends RigidBody2D

onready var coll = $CollisionShape2D

var vel: Vector2 = Vector2()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(_delta):
	set_rotation(0)

