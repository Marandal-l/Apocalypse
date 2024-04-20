@tool
extends Node3D


@onready var weapon_mesh	:	MeshInstance3D	= %WeaponMesh
@onready var weapon_shadow	:	MeshInstance3D	= %WeaponShadow
@export var WEAPON_TYPE	: Weapons:
	set(value):
		WEAPON_TYPE = value
		if Engine.is_editor_hint():
			load_weapon()


func _ready() -> void:
	load_weapon()
	
	# ToDo Re-do item1 - 9 system to be dynamic
	# instead of hard-typing item path's
func _input(event): 
	if event.is_action_pressed("item1"):
		WEAPON_TYPE = load("res://assets/player_holdable/crowbar/crowbar.tres")
		load_weapon()
	if event.is_action_pressed("item2"):
		WEAPON_TYPE = load("res://assets/player_holdable/crowbar/crowbar_left.tres")
		load_weapon()	
	
func load_weapon() -> void:
	weapon_mesh.mesh	= WEAPON_TYPE.mesh		# Set weapon mesh
	position			= WEAPON_TYPE.position	# Set weapon position
	rotation_degrees	= WEAPON_TYPE.rotation	# Set weapon rotation
	weapon_shadow.visible = WEAPON_TYPE.shadow	# Turn shadow on/off
