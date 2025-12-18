extends Node2D

@onready var mvplayer: VideoStreamPlayer = $"../mvplayer"

const in_editor: bool = true
var song_name = "OVERJOY OVERDOSE"


var scroll_speed: float = 3
var note_output_arr = [[], [], [], []]


var song_info = {
	"OVERJOY OVERDOSE" = {
		"note_spawn_times": "[[], [], [], []]
"
	}
}

func _ready():
	if in_editor:
		Global.NoteReceptorPress.connect(NoteReceptorPress)
	else:
		var note_spawn_times = song_info.get(song_name).get("note_spawn_times")
		var note_spawn_times_arr = str_to_var(note_spawn_times)
		
		var counter: int = 0
		for key in note_spawn_times_arr:
			
			var button_name: String = ""
			match counter:
				0:
					button_name = "key_d"
				1:
					button_name = "key_f"
				2:
					button_name = "key_j"
				3:
					button_name = "key_k"
			
			for delay in key:
				SpawnNote(button_name, delay)
				
			counter += 1

func NoteReceptorPress(button_name: String, array_num: int):
	print(str(array_num) + " " + str(mvplayer.get_stream_position()))
	#note_output_arr[array_num].append(mvplayer.get_stream_position() - scroll_speed)


func SpawnNote(button_name: String, delay: float):
	await get_tree().create_timer(delay).timeout
	Global.CreateNote.emit(button_name)

func _on_mvplayer_finished():
	print(note_output_arr)
