extends Control

var touch = false


func _ready():

	MusicController.themeMusic()
	yield(get_tree().create_timer(0.4),"timeout")
	appear($ceritaButton)
	yield(get_tree().create_timer(0.3),"timeout")
	appear($permainanButton)
	yield(get_tree().create_timer(0.3),"timeout")
	appear($laguButton)
	yield(get_tree().create_timer(0.3),"timeout")
	$AnimationPlayer.play("show")
	yield($AnimationPlayer,"animation_finished")
	$AnimationPlayer.play("anim")
	$laguButton.disabled = false
	$permainanButton.disabled = false
	$ceritaButton.disabled = false
func appear(lokasi):
	
	$Tween.interpolate_property(lokasi, "rect_scale", Vector2(0,0), Vector2(1, 1), 0.5, Tween.TRANS_BACK, Tween.EASE_OUT)  
	$Tween.start()
func _on_laguButton_pressed():
	pass
func _on_permainanButton_pressed():
# warning-ignore:return_value_discarded
	MusicController.sfxSound("res://Scene/Main/gameMenu.tscn")
	
	

func _on_ceritaButton_pressed():
	pass
