extends Node
@export var save_path01 = "res://Save/State1.save"
@export var save_path02 = "res://Save/State2.save"

const PrintDelete = "Do you wish to delete the Current Save"

func save(SaveStateNum: int):
	if SaveStateNum == 1:
		if(FileAccess.file_exists(save_path01)):
			print(PrintDelete)
		else:
			var file = FileAccess.open(save_path01, FileAccess.WRITE)
			# SAVE STATE 01
			
	elif SaveStateNum == 2:
		if(FileAccess.file_exists(save_path02)):
			print(PrintDelete)
		else:
			var file = FileAccess.open(save_path02, FileAccess.WRITE)
			# SAVE STATE 02
			

func load_data(SaveStateNum : int):
	if SaveStateNum == 1:
		if FileAccess.file_exists(save_path01):
			var file = FileAccess.open(save_path01, FileAccess.READ)
			# READ AND RE-WRTIE VALUES TO CURRENT
		else:
			print("no Save-Data")
			# Show pop-up
	elif SaveStateNum == 2:
		if FileAccess.file_exists(save_path02):
			var file = FileAccess.open(save_path02, FileAccess.READ)
			# READ AND RE-WRTIE VALUES TO CURRENT
		else:
			print("no Save-Data")
			# Show pop-up

func deleteState(SaveStateNum: int):
	if SaveStateNum == 1:
		pass
	elif SaveStateNum == 2:
		pass
	else:
		pass
