extends Node2D

#SCREEN
@onready var TitleScreen = $CanvasLayer/TitleScreen
@onready var MenuScreen = $CanvasLayer/MenuScreen
@onready var MorpionScreen = $CanvasLayer/Morpion
@onready var OptionScreen = $CanvasLayer/OptionScreen

#BUTTON
@onready var SelectGameBtn = $CanvasLayer/TitleScreen/SelectGameBtn
@onready var OptionBtn = $CanvasLayer/TitleScreen/OptionBtn
@onready var ReturnBtnMenu = $CanvasLayer/MenuScreen/Return
@onready var ReturnBtnMorpion = $CanvasLayer/Morpion/ReturnMorpion
@onready var MorpionLauch = $CanvasLayer/MenuScreen/Morpion
@onready var ReturnBtnOption = $CanvasLayer/OptionScreen/ReturnOption

#BUTTON_IN_MORPION
@onready var BtnMorpion1 = $"CanvasLayer/Morpion/GridContainer/1/Btn1"
@onready var BtnMorpion2 = $"CanvasLayer/Morpion/GridContainer/2/Btn2"
@onready var BtnMorpion3 = $"CanvasLayer/Morpion/GridContainer/3/Btn3"
@onready var BtnMorpion4 = $"CanvasLayer/Morpion/GridContainer/4/Btn4"
@onready var BtnMorpion5 = $"CanvasLayer/Morpion/GridContainer/5/Btn5"
@onready var BtnMorpion6 = $"CanvasLayer/Morpion/GridContainer/6/Btn6"
@onready var BtnMorpion7 = $"CanvasLayer/Morpion/GridContainer/7/Btn7"
@onready var BtnMorpion8 = $"CanvasLayer/Morpion/GridContainer/8/Btn8"
@onready var BtnMorpion9 = $"CanvasLayer/Morpion/GridContainer/9/Btn9"
@onready var RetryBtnMorpion = $CanvasLayer/Morpion/RetryBtnMorpion

#TEXT_FOR_MORPION
@onready var RedWinText = $CanvasLayer/Morpion/RedWinText
@onready var BlueWinText = $CanvasLayer/Morpion/BlueWinText

#PARTICLES FOR MORPION
@onready var RedParticlesMorpions = $CanvasLayer/Morpion/RED
@onready var CianParticlesMorpions = $CanvasLayer/Morpion/CIAN

#ICON_FOR_MORPION
var crossicon = preload("res://Images/croix.png")
var circleicon = preload("res://Images/cercle.png")

func _ready():
	newGameMorpion()
	var listOfBtnMoprion = [BtnMorpion1, BtnMorpion2, BtnMorpion3, BtnMorpion4, BtnMorpion5, BtnMorpion6, BtnMorpion7, BtnMorpion8, BtnMorpion9]


func _process(delta):
	viewIfWin()
	nullMatch()


func _on_select_game_btn_pressed():
	TitleScreen.visible = !TitleScreen.visible
	MenuScreen.visible = !MenuScreen.visible


func _on_return_pressed():
	TitleScreen.visible = !TitleScreen.visible
	MenuScreen.visible = !MenuScreen.visible


func _on_return_option_pressed():
	TitleScreen.visible = !TitleScreen.visible
	OptionScreen.visible = !OptionScreen.visible
	
func _on_option_btn_pressed():
	TitleScreen.visible = !TitleScreen.visible
	OptionScreen.visible = !OptionScreen.visible



#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#----------------- MORPION PART ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

var morpionplayer = 1
var Btn1icon = false
var Btn2icon = false
var Btn3icon = false
var Btn4icon = false
var Btn5icon = false
var Btn6icon = false
var Btn7icon = false
var Btn8icon = false
var Btn9icon = false


func _on_btn_1_pressed():
	if morpionplayer == 1:
		BtnMorpion1.icon = crossicon
		BtnMorpion1.text = ""
		print(morpionplayer)
		morpionplayer = 2
		BtnMorpion1.disabled = true
		Btn1icon = true
	elif morpionplayer == 2:
		BtnMorpion1.icon = circleicon
		BtnMorpion1.text = ""
		print(morpionplayer)
		morpionplayer = 1
		BtnMorpion1.disabled = true
		Btn1icon = true


func _on_btn_2_pressed():
	if morpionplayer == 1:
		BtnMorpion2.icon = crossicon
		BtnMorpion2.text = ""
		print(morpionplayer)
		morpionplayer = 2
		BtnMorpion2.disabled = true
		Btn2icon = true
	elif morpionplayer == 2:
		BtnMorpion2.icon = circleicon
		BtnMorpion2.text = ""
		print(morpionplayer)
		morpionplayer = 1
		BtnMorpion2.disabled = true
		Btn2icon = true


func _on_btn_3_pressed():
	if morpionplayer == 1:
		BtnMorpion3.icon = crossicon
		BtnMorpion3.text = ""
		print(morpionplayer)
		morpionplayer = 2
		BtnMorpion3.disabled = true
		Btn3icon = true
	elif morpionplayer == 2:
		BtnMorpion3.icon = circleicon
		BtnMorpion3.text = ""
		print(morpionplayer)
		morpionplayer = 1
		BtnMorpion3.disabled = true
		Btn3icon = true


func _on_btn_4_pressed():
	if morpionplayer == 1:
		BtnMorpion4.icon = crossicon
		BtnMorpion4.text = ""
		print(morpionplayer)
		morpionplayer = 2
		BtnMorpion4.disabled = true
		Btn4icon = true
	elif morpionplayer == 2:
		BtnMorpion4.icon = circleicon
		BtnMorpion4.text = ""
		print(morpionplayer)
		morpionplayer = 1
		BtnMorpion4.disabled = true
		Btn4icon = true


func _on_btn_5_pressed():
	if morpionplayer == 1:
		BtnMorpion5.icon = crossicon
		BtnMorpion5.text = ""
		print(morpionplayer)
		morpionplayer = 2
		BtnMorpion5.disabled = true
		Btn5icon = true
	elif morpionplayer == 2:
		BtnMorpion5.icon = circleicon
		BtnMorpion5.text = ""
		print(morpionplayer)
		morpionplayer = 1
		BtnMorpion5.disabled = true
		Btn5icon = true


func _on_btn_6_pressed():
	if morpionplayer == 1:
		BtnMorpion6.icon = crossicon
		BtnMorpion6.text = ""
		print(morpionplayer)
		morpionplayer = 2
		BtnMorpion6.disabled = true
		Btn6icon = true
	elif morpionplayer == 2:
		BtnMorpion6.icon = circleicon
		BtnMorpion6.text = ""
		print(morpionplayer)
		morpionplayer = 1
		BtnMorpion6.disabled = true
		Btn6icon = true

func _on_btn_7_pressed():
	if morpionplayer == 1:
		BtnMorpion7.icon = crossicon
		BtnMorpion7.text = ""
		print(morpionplayer)
		morpionplayer = 2
		BtnMorpion7.disabled = true
		Btn7icon = true
	elif morpionplayer == 2:
		BtnMorpion7.icon = circleicon
		BtnMorpion7.text = ""
		print(morpionplayer)
		morpionplayer = 1
		BtnMorpion7.disabled = true
		Btn7icon = true


func _on_btn_8_pressed():
	if morpionplayer == 1:
		BtnMorpion8.icon = crossicon
		BtnMorpion8.text = ""
		print(morpionplayer)
		morpionplayer = 2
		BtnMorpion8.disabled = true
		Btn8icon = true
	elif morpionplayer == 2:
		BtnMorpion8.icon = circleicon
		BtnMorpion8.text = ""
		print(morpionplayer)
		morpionplayer = 1
		BtnMorpion8.disabled = true
		Btn8icon = true


func _on_btn_9_pressed():
	if morpionplayer == 1:
		BtnMorpion9.icon = crossicon
		BtnMorpion9.text = ""
		print(morpionplayer)
		morpionplayer = 2
		BtnMorpion9.disabled = true
		Btn9icon = true
	elif morpionplayer == 2:
		BtnMorpion9.icon = circleicon
		BtnMorpion9.text = ""
		print(morpionplayer)
		morpionplayer = 1
		BtnMorpion9.disabled = true
		Btn9icon = true


func _on_retry_btn_morpion_pressed():
	newGameMorpion()
	self.visible = !self.visible
	RedWinText.visible = false
	BlueWinText.visible = false
	



#------------ BUTTON AND FUNCTION ---- LINES SEPART ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


func viewIfWin():
	#LINE [1,2,3] RED
	if BtnMorpion1.icon == crossicon and BtnMorpion2.icon == crossicon and BtnMorpion3.icon == crossicon:
		victoryRedMorpion()
	
	#LINE [4,5,6] RED
	elif BtnMorpion4.icon == crossicon and BtnMorpion5.icon == crossicon and BtnMorpion6.icon == crossicon:
		victoryRedMorpion()
	
	#LINE [7,8,9] RED
	elif BtnMorpion7.icon == crossicon and BtnMorpion8.icon == crossicon and BtnMorpion9.icon == crossicon:
		victoryRedMorpion()
		
	#COLUMS [1,4,7] RED
	elif BtnMorpion1.icon == crossicon and BtnMorpion4.icon == crossicon and BtnMorpion7.icon == crossicon:
		victoryRedMorpion()
	
	#COLUMS [2,5,8] RED
	elif BtnMorpion2.icon == crossicon and BtnMorpion5.icon == crossicon and BtnMorpion8.icon == crossicon:
		victoryRedMorpion()
	
	#COLUMS [3,6,9] RED
	elif BtnMorpion3.icon == crossicon and BtnMorpion6.icon == crossicon and BtnMorpion9.icon == crossicon:
		victoryRedMorpion()
	
	#DIAGONAL [1,5,9] RED
	elif BtnMorpion1.icon == crossicon and BtnMorpion5.icon == crossicon and BtnMorpion9.icon == crossicon:
		victoryRedMorpion()
	
	#DIAGONAL [3,5,7] RED
	elif BtnMorpion3.icon == crossicon and BtnMorpion5.icon == crossicon and BtnMorpion7.icon == crossicon:
		victoryRedMorpion()
	
	
#------------------- BLUE AND RED ---- LINES SEPART-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	#LINE [1,2,3] BLUE
	if BtnMorpion1.icon == circleicon and BtnMorpion2.icon == circleicon and BtnMorpion3.icon == circleicon:
		victoryBlueMorpion()
	
	#LINE [4,5,6] BLUE
	elif BtnMorpion4.icon == circleicon and BtnMorpion5.icon == circleicon and BtnMorpion6.icon == circleicon:
		victoryBlueMorpion()
	
	#LINE [7,8,9] BLUE
	elif BtnMorpion7.icon == circleicon and BtnMorpion8.icon == circleicon and BtnMorpion9.icon == circleicon:
		victoryBlueMorpion()
		
	#COLUMS [1,4,7] BLUE
	elif BtnMorpion1.icon == circleicon and BtnMorpion4.icon == circleicon and BtnMorpion7.icon == circleicon:
		victoryBlueMorpion()
	
	#COLUMS [2,5,8] BLUE
	elif BtnMorpion2.icon == circleicon and BtnMorpion5.icon == circleicon and BtnMorpion8.icon == circleicon:
		victoryBlueMorpion()
	
	#COLUMS [3,6,9] BLUE
	elif BtnMorpion3.icon == circleicon and BtnMorpion6.icon == circleicon and BtnMorpion9.icon == circleicon:
		victoryBlueMorpion()
	
	#DIAGONAL [1,5,9] BLUE
	elif BtnMorpion1.icon == circleicon and BtnMorpion5.icon == circleicon and BtnMorpion9.icon == circleicon:
		victoryBlueMorpion()
	
	#DIAGONAL [3,5,7] BLUE
	elif BtnMorpion3.icon == circleicon and BtnMorpion5.icon == circleicon and BtnMorpion7.icon == circleicon:
		victoryBlueMorpion()




#----------- NEW GAME FUNCTION -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

func newGameMorpion():
	BtnMorpion1.icon = null
	BtnMorpion1.text = ""
	
	BtnMorpion2.icon = null
	BtnMorpion2.text = ""
	
	BtnMorpion3.icon = null
	BtnMorpion3.text = ""
	
	BtnMorpion4.icon = null
	BtnMorpion4.text = ""
	
	BtnMorpion5.icon = null
	BtnMorpion5.text = ""
	
	BtnMorpion6.icon = null
	BtnMorpion6.text = ""
	
	BtnMorpion7.icon = null
	BtnMorpion7.text = ""
	
	BtnMorpion8.icon = null
	BtnMorpion8.text = ""
	
	BtnMorpion9.icon = null
	BtnMorpion9.text = ""
	
	BtnMorpion1.disabled = false
	BtnMorpion2.disabled = false
	BtnMorpion3.disabled = false
	BtnMorpion4.disabled = false
	BtnMorpion5.disabled = false
	BtnMorpion6.disabled = false
	BtnMorpion7.disabled = false
	BtnMorpion8.disabled = false
	BtnMorpion9.disabled = false
	
	Btn1icon = false
	Btn2icon = false
	Btn3icon = false
	Btn4icon = false
	Btn5icon = false
	Btn6icon = false
	Btn7icon = false
	Btn8icon = false
	Btn9icon = false
	
	RetryBtnMorpion.visible = false
	
#------------ CLEAR GAME FUNCTION ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

func clearGameMorpion():
	pass

#------------ DISABLED ALL BUTTON -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
func disabledAllButtonMorpion():
	BtnMorpion1.disabled = true
	BtnMorpion2.disabled = true
	BtnMorpion3.disabled = true
	BtnMorpion4.disabled = true
	BtnMorpion5.disabled = true
	BtnMorpion6.disabled = true
	BtnMorpion7.disabled = true
	BtnMorpion8.disabled = true
	BtnMorpion9.disabled = true


#----------- VICTORY BY RED FUNCTION -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

func victoryRedMorpion():
	RedWinText.visible = true
	BlueWinText.visible = false
	disabledAllButtonMorpion()
	RetryBtnMorpion.visible = true
	CianParticlesMorpions.emitting = true
	RedParticlesMorpions.emitting = true
	

#----------- VICTORY BY BLUE FUNCTION -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

func victoryBlueMorpion():
	BlueWinText.visible = true
	RedWinText.visible = false
	disabledAllButtonMorpion()
	RetryBtnMorpion.visible = true
	CianParticlesMorpions.emitting = true
	RedParticlesMorpions.emitting = true



func _on_return_morpion_pressed():
	MorpionScreen.visible = !MorpionScreen.visible
	MenuScreen.visible = !MenuScreen.visible


func _on_morpion_pressed():
	MenuScreen.visible = !MenuScreen.visible
	MorpionScreen.visible = !MorpionScreen.visible

#--------------IF MATCH IS NULL-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
func nullMatch():
	var listOfBtnIconMoprion = [Btn1icon, Btn2icon, Btn3icon, Btn4icon, Btn5icon, Btn6icon, Btn7icon, Btn8icon, Btn9icon]
	if Btn1icon == true and Btn2icon == true and Btn3icon == true and Btn4icon == true and Btn5icon == true and Btn6icon == true and Btn7icon == true and Btn8icon == true and Btn9icon == true and RedWinText.visible == false and BlueWinText.visible == false:
		RetryBtnMorpion.visible = true
