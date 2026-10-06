extends AutoworkTest

const Rules = preload("res://scripts/rules.gd")

func test_page_ready() -> void:
	var rules = Rules.new()
	assert_false(rules.page_ready(false), "no focus")
	assert_false(rules.may_page(), "page waits")
	rules.take_focus()
	assert_true(rules.page_ready(true), "focused")
	assert_true(rules.may_page(), "page opens")
	assert_true(load("res://scenes/page.tscn") != null, "page loads")
