extends Area2D
@onready var sfx_win = $sfxWin

signal hit
signal scored

func _on_body_entered(body):
	hit.emit()

func _on_score_area_body_entered(body):
	scored.emit()
	sfx_win.play()
