extends RefCounted

var focused := false

func page_ready(is_focused: bool) -> bool:
	return is_focused

func take_focus() -> void:
	focused = true

func may_page() -> bool:
	return page_ready(focused)
