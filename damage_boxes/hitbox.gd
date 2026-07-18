class_name Hitbox extends Area2D

@export var damage: = 1
@export var knockback_amount: = 200
@export var knockback_direction: Vector2

var hit_target: Array
@export var store_hit_target: bool = false

func clear_hit_target() -> void:
	hit_target.clear()
