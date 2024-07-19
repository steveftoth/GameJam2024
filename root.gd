extends Node2D

signal score_changed(old_value, new_value)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://mainlevel.tscn")


func _on_rich_text_label_ready():
	$ScoreLabel.text = str(PlayerVariables.score)



func _on_debug_button_pressed():
	increment_score(1)


func increment_score(amount):
	var old_score = PlayerVariables.score
	PlayerVariables.score += amount
	score_changed.emit(old_score, PlayerVariables.score)


func _on_score_changed(old_value, new_value):
	$ScoreLabel.text = str(PlayerVariables.score)
