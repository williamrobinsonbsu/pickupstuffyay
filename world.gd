extends Node3D

@onready var burger_patty = $"Burger/Burger Patty"
@onready var cut_lettuce = $"Burger/Cut Lettuce"
@onready var cut_tomato = $"Burger/Cut Tomato"
@onready var cut_cheese = $"Burger/Cut Cheese"
@onready var ketchup = $Burger/Ketchup
@onready var top_bun = $"Burger/Top Bun"

func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()

func _on_ingredient_checker_body_entered(_body):
	if _body.is_in_group('burger'):
		check_ingredients()

func check_ingredients():
	print("The ingredients are:")
	if burger_patty.is_visible_in_tree() == true:
		print('patty')
	if cut_lettuce.is_visible_in_tree() == true:
		print('lettuce')
	if cut_tomato.is_visible_in_tree() == true:
		print('tomato')
	if cut_cheese.is_visible_in_tree() == true:
		print('cheese')
	if ketchup.is_visible_in_tree() == true:
		print('ketchup')
	if top_bun.is_visible_in_tree() == true:
		print('bun')

func _on_stovetop_body_entered(body):
	if body.has_method("cook"):
		body.cook()

func _on_cutting_area_body_entered(body):
	if body.has_method("cut_lettuce"):
		body.cut_lettuce()
	if body.has_method("cut_tomato"):
		body.cut_tomato()
	if body.has_method("cut_cheese"):
		body.cut_cheese()
