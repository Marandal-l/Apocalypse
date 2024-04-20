extends Node

@export var edible		: bool	= true
@export var give_health : int	= 25

func eat(_body):
	if not edible:
		return
	queue_free()
