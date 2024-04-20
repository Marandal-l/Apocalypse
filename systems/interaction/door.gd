extends Node3D

@export var open = false

var playback = null

# Called when the node enters the scene tree for the first time.
func _ready():
	playback = $AnimationTree.get("parameters/playback")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func toggle_door(_body):
	open = !open
	
	if open:
		playback.travel("door_open")
		$DoorOpen.play()
	else:
		playback.travel("door_close")
		$DoorClose.play()
