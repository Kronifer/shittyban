extends KinematicBody2D

var vel: Vector2 = Vector2()

export var speed = 150

onready var anim = $AnimatedSprite

var facing: String = "down"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("idle_down")
	
func _input(event):
	if event.is_action_pressed("ui_quit"):
		get_tree().quit()


func _physics_process(_delta):
	vel = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		vel.x += speed
		facing = "right"
	if Input.is_action_pressed("ui_left"):
		vel.x -= speed
		facing = "left"
	if Input.is_action_pressed("ui_up"):
		vel.y -= speed
		facing = "up"
	if Input.is_action_pressed("ui_down"):
		vel.y += speed
		facing = "down"
	move_and_slide(vel)
	
	anim.animation = "walk_" + facing if vel.x or vel.y != 0 else "idle_" + facing

