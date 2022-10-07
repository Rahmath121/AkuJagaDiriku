extends Node2D

enum {
	boys,
	girls
}

var gender = boys

enum {
	centang,
	silang
}
var current = silang
var depan = 0

var touch = false
var notTouch = false


var kepala = false
var dada = false
var tangan = false
var kemaluan = false
var mulut = false
var pantat = false

var silangOBJ = preload("res://Scene/GAme/goodTouch/silang.tscn")
var silangItem = null
func _ready():
		randomize()
		silangSpawn()
		gender = pick_random_state([boys, girls])
		match gender:
			boys:
				$Panah.position = Vector2(455, 300)
			girls:
				$Panah.position = Vector2(452, 305)
				$Control/karakterDepan.texture = load("res://Asset/goodTouch/Perempuan Good Touch Depan.png")
				$Control/karakterBelakang.texture = load("res://Asset/goodTouch/Perempuan Good Touch Belakang.png")
	



	


# warning-ignore:unused_argument
func _on_kepala_body_entered(body):
	mulut = true
# warning-ignore:unused_argument
func _on_kepala_body_exited(body):
	mulut = false


# warning-ignore:unused_argument
func _on_dada_body_entered(body):
	dada = true
# warning-ignore:unused_argument
func _on_dada_body_exited(body):
	dada = false


# warning-ignore:unused_argument
func _on_tangan_body_entered(body):
	tangan = true
# warning-ignore:unused_argument
func _on_tangan_body_exited(body):
	tangan = false


# warning-ignore:unused_argument
func _on_Kemaluan_body_entered(body):
	kemaluan = true
# warning-ignore:unused_argument
func _on_Kemaluan_body_exited(body):
	kemaluan = false


# warning-ignore:unused_argument
func _on_kepala2_body_exited(body):
	kepala = false
# warning-ignore:unused_argument
func _on_kepala2_body_entered(body):
	kepala = true


# warning-ignore:unused_argument
func _on_pantat_body_entered(body):	
	pantat = true
# warning-ignore:unused_argument
func _on_pantat_body_exited(body):
	pantat = false





	



func silangSpawn():
	var a  = silangOBJ.instance()
	a.position = $object/silang.position
	a.connect("lepas", self, "silangLepas" )
	$object.add_child(a)
	silangItem = a
	
func silangLepas():
	if mulut == true:
		$AREA/mulut/CollisionShape2D.set_deferred("disabled", true)
		silangItem.currentPos = $AREA/mulut.position
		silangItem.shape.set_deferred("disabled", true)
		silangItem = null
		mulut = false
		silangSpawn()
	elif dada == true:
		$AREA/dada/CollisionShape2D.set_deferred("disabled", true)
		silangItem.currentPos = $AREA/dada.position
		silangItem.shape.set_deferred("disabled", true)
		
		silangItem = null
		dada = false
		silangSpawn()
	elif tangan == true:
		print("tangn")
		tangan = false
		
	elif kemaluan == true:
		$AREA/Kemaluan/CollisionShape2D.set_deferred("disabled", true)
		silangItem.currentPos = $AREA/Kemaluan.position
		silangItem.shape.set_deferred("disabled", true)
		silangItem = null
		kemaluan = false
		silangSpawn()
	elif pantat == true:
		$AREA/pantat/CollisionShape2D.set_deferred("disabled", true)
		silangItem.currentPos = $AREA/pantat.position
		silangItem.shape.set_deferred("disabled", true)
		silangItem = null
		pantat = false
		silangSpawn()
	elif kepala == true:
		kepala = false
		print(kepala)
		print('kepala')
	
func pick_random_state(state_list):
	
	state_list.shuffle()
	return state_list.pop_front()
