extends StaticBody2D

signal buttonFinished

signal buttonPlaced

onready var anim = $Area2D/AnimatedSprite

var finished = false


func _ready():
	emit_signal("buttonPlaced")



func _on_Area2D_body_entered(body):
	if not finished:
		body.queue_free()
		anim.animation = "finished"
		finished = true
		collision_mask = 3
		emit_signal("buttonFinished")
	
