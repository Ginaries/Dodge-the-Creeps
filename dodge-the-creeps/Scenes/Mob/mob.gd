extends RigidBody2D


func _ready():#ejecuta una sola vez al iniciar un objeto u escena 
	var mob_types = Array($AnimatedSprite2D.sprite_frames.get_animation_names())
	$AnimatedSprite2D.animation = mob_types.pick_random()#No conocia el Pick_Ramdon
	

	
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
