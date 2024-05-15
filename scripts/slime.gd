extends Node2D

const SPEED = 60
var direction = 1

@onready var ray_castleft = $RayCastleft
@onready var ray_castright = $RayCastright
@onready var animated_sprite = $AnimatedSprite2D
@onready var raytop = $AnimatedSprite2D/killzone/raytop

@onready var collision_shape = $AnimatedSprite2D/killzone/CollisionShape2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if raytop.is_colliding():
		collision_shape.disabled = true
		animated_sprite.play('die')
		direction = 0


	if ray_castright.is_colliding():
		direction = -1
		animated_sprite.flip_h = true

	if ray_castleft.is_colliding():
		direction = 1
		animated_sprite.flip_h = false

	position.x += delta * SPEED * direction
	
