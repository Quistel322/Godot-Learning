extends Node2D

@onready var label: Label = $Label
var health = 100

var goooal = 52  # это пока что у нас переменная, которая автоматически определяется как int, но мы можем её изменить в теле программы
@export var gool := 10 	# в данном варианте мы с помощью := устанавливаем, что gool это int, и он не может изменить свой тип. 
#здесь же с помощью @export мы делаем так, что при выделении файла, где лежит скрипт, справа появится инспектор(?), и можно будет менять значение с помощью ползунка
var Message = "Да здравствует санкт петерпург "

#var intems : Array[]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text = "Hello World!"
	label.modulate = Color.GOLD
		
func _input(event) -> void:
	
	if event.is_action_pressed("left"): label.modulate = Color.YELLOW
	if event.is_action_pressed("right"): label.modulate = Color.RED
	if event.is_action_pressed("spacebar"): label.modulate = Color.BLACK
	
	goooal += 1
	print(Message + str (goooal))  # str(goooal) -- преобразует int в строку\
	
	
	print(add(52,53)) # вызов функции
	
#создание функций, которую потом можно вызвать
func add(num1 : int, num2 : int) -> int:
	var result = num1 + num2
	return result	 
