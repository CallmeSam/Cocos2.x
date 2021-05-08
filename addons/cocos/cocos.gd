tool
extends EditorPlugin

var export_btn

func _enter_tree():
	export_btn = preload("res://addons/cocos/cocos_export.tscn").instance()
	add_control_to_container(CONTAINER_CANVAS_EDITOR_MENU, export_btn)
	add_custom_type("CocosNode", "Node2D", preload("cocos_node.gd"), null)
	export_btn.setRoot(self)
	pass

func _exit_tree():
	remove_control_from_container(CONTAINER_CANVAS_EDITOR_MENU, export_btn)
	remove_custom_type("CocosNode")
	pass
