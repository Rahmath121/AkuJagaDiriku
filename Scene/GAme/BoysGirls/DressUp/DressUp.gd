extends Node2D


var pakaian = []
var pos = []
var baju = false
var celana = false

enum {
	boys,
	girl
}

var current = boys
func _ready():
	for i in $object.get_children():
		pakaian.append(i)
	for p in $position.get_children():
		pos.append(p)
	randomPos()
	match current:
		boys:
			pass
		girl:
			pass
	
func randomPos():
	pos.shuffle()
	for i in pos.size():
		pakaian[i].currentPos = pos[i].position
		pakaian[i].move()




func _on_baju1_lepas():
	pass # Replace with function body.
func _on_baju3_lepas():
	pass # Replace with function body.
func _on_baju5_lepas():
	pass # Replace with function body.
func _on_baju6_lepas():
	pass # Replace with function body.
func _on_baju7_lepas():
	pass # Replace with function body.
func _on_baju8_lepas():
	pass # Replace with function body.






func _on_baju_area_entered(area):
	pakaian = true
	$Control/Panel/baju.texture = area.pakaianNow
# warning-ignore:unused_argument
func _on_baju_area_exited(area):
	pakaian = false

func _on_celana_area_entered(area):
	$Control/Panel/celana.texture = area.pakaianNow
# warning-ignore:unused_argument
func _on_celana_area_exited(area):
	pass # Replace with function body.
