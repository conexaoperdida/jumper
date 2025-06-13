extends KinematicBody2D

export var speed = 100
var direction = 1

func _physics_process(delta):
    position.x += direction * speed * delta
    if position.x < 0 or position.x > 480:
        direction *= -1
