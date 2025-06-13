extends Node2D

onready var player = $Player
onready var score_label = $CanvasLayer/ScoreLabel
onready var game_over_label = $CanvasLayer/GameOverLabel
onready var revive_button = $CanvasLayer/ReviveButton

var score = 0
var is_game_over = false

func _ready():
    set_process(true)
    game_over_label.visible = false
    revive_button.visible = false

func _process(delta):
    if not is_game_over:
        score += int(delta * 100)
        score_label.text = "SCORE: " + str(score)

func game_over():
    is_game_over = true
    game_over_label.visible = true
    revive_button.visible = true
    set_process(false)

func _on_ReviveButton_pressed():
    print("Simulando anúncio recompensado...")
    yield(get_tree().create_timer(2.0), "timeout")
    print("Anúncio concluído. Revivendo jogador.")
    player.position = Vector2(240, 400)
    is_game_over = false
    game_over_label.visible = false
    revive_button.visible = false
    set_process(true)
