extends Node2D



var rambut = false
var mata = false
var alis = false
var mulut = false
func _ready():
	start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# warning-ignore:unused_argument
func _on_rambut_body_entered(body):
	rambut = true
# warning-ignore:unused_argument
func _on_rambut_body_exited(body):
	rambut = false

# warning-ignore:unused_argument
func _on_alis_body_entered(body):
	alis = true
func _on_alis_body_exited(body):
	alis = false

# warning-ignore:unused_argument
func _on_mata_body_entered(body):
	mata = true
# warning-ignore:unused_argument
func _on_mata_body_exited(body):
	mata = false

# warning-ignore:unused_argument
func _on_mulut_body_entered(body):
	mulut = true
# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_mulut_body_exited(body):
	mulut = false



func start():
	$alis.currentPos = $alis.position
	$rambut.currentPos = $rambut.position
	$mata2.currentPos = $mata2.position
	$mulut.currentPos = $mulut.position




func _on_rambut_lepas():
	if  rambut == true:
		$body/Panel/karakter.texture = load("res://Asset/Body Puzzle/boy/Full Head.png")
		$rambut.hide()
		$mata2.show()
	else:
		$rambut.move()


func _on_alis_lepas():
	if  rambut == true:
		$body/Panel/karakter.texture = load("res://Asset/Body Puzzle/boy/Bagian/alis+mata.png")
		$alis.hide()
		$mulut.show()
	else:
		$alis.move()


func _on_mata2_lepas():
	if  mata == true:
		$body/Panel/karakter.texture = load("res://Asset/Body Puzzle/boy/Bagian/rambut+mata.png")
		$mata2.hide()
		$alis.show()
	else:
		$mata2.move()


func _on_mulut_lepas():
	if  rambut == true:

		$mulut.hide()
		$body/Panel/karakter2.show()
	else:
		$mulut.move()
