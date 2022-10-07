extends Control


var detik = 0
var menit = 0
export var backScene : PackedScene
func _ready():
	pass


func _on_Timer_timeout():
	detik += 1
	$TopButtton/timer.text = str(menit) + " : " + str(detik)


func timerStart():
	$TopButtton/timer.text = "0 : 0"
	$TopButtton/timer.show()
	$Timer.start()

func PopUP():
	$PopupScoreGame.show()
	get_tree().paused = true



func _on_TextureButton_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene_to(backScene)


func _on_TextureButton3_pressed():
	pass # Replace with function body.
