tool
extends Button

var editor_plugin : EditorPlugin
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func setRoot(interface):
	editor_plugin = interface

func _on_Button_button_down():
	var root = editor_plugin.get_editor_interface().get_edited_scene_root()
	var export_file = File.new()
	var path = "user://%s.save" % root.name
	print(path)
	export_file.open(path, File.WRITE)
	export_file.store_line("heihei")
	export_file.close()
	pass # Replace with function body.
