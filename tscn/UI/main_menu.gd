extends Control

func _on_play_button_pressed() -> void:
	SceneSwitcher.switch_scene("res://tscn/World/World.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()
