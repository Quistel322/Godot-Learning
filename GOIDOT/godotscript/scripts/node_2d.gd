extends Node2D

@onready var label: Label = $Label
var health = 100

var goooal = 52  # это пока что у нас переменная, которая автоматически определяется как int, но мы можем её изменить в теле программы
@export var gool := 10 	# в данном варианте мы с помощью := устанавливаем, что gool это int, и он не может изменить свой тип. 
#здесь же с помощью @export мы делаем так, что при выделении файла, где лежит скрипт, справа появится инспектор(?), и можно будет менять значение с помощью ползунка
var Message = "Да здравствует санкт петерпург "

var level : int = 0 

#словарь
var dict = {"Player" : "Son Jin Woo", 
			"Level"  : level, 
			"Status" : "Ubivec"}

#var intems : Array[]               #

var roll = randf() #роляет случайное число в диапазоне от 0 до 1
var heigh =  randi_range (52, 152)  # рандомит случайное число в диапазоне от 52 до 152

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text = "Hello World!"
	label.modulate = Color.GOLD
		
func _input(event) -> void:
	
	
	
	if event.is_action_pressed("left"): 
		label.modulate = Color.YELLOW
		for i in range(0,5):
			print("сейчас число ", + i)
			
	if event.is_action_pressed("right"): 
		label.modulate = Color.RED
		print(add(52,53)) # вызов функции
	
	if event.is_action_pressed("spacebar"): 
		label.modulate = Color.BLACK
		print(Message + str (goooal))  # str(goooal) -- преобразует int в строку\
	goooal += 1
	level += 1
	if event.is_action_pressed("Dict"):
		for username in dict:
			print(username + " : " + str(dict[username]))

	
#создание функций, которую потом можно вызвать
func add(num1 : int, num2 : int) -> int:
	var result = num1 + num2
	return result	 
