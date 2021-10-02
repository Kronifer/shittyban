extends Node2D

var buttons: int = 0

var completedbuttons: int = 0 

var ids = []


func _ready():
	for entity in get_tree().get_nodes_in_group("Button"):
		buttons += 1

func _process(_delta):
	for entity in get_tree().get_nodes_in_group("Button"):
		if entity.get_instance_id() in ids:
			continue
		if entity.finished == true:
			completedbuttons += 1
			ids.append(entity.get_instance_id())
	if completedbuttons == buttons:
		buttons = 0
		completedbuttons = 0
		get_tree().change_scene("res://Scenes/Level4.tscn")
