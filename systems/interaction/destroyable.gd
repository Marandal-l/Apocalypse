extends Node

@export var destroyable = true
@export var health : int = 10

func destroy(_body):
	queue_free()
