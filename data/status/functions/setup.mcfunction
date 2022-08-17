# プレイヤーステータス初期化
scoreboard objectives remove STATUS
scoreboard objectives add STATUS trigger "ステータス"
scoreboard objectives setdisplay sidebar STATUS
scoreboard players set @a STATUS 0

# 古いステータス初期化
scoreboard objectives remove OLD_STATUS
scoreboard objectives add OLD_STATUS dummy "古いステータス"
scoreboard players set @a OLD_STATUS 0

# エフェクト削除
effect clear @a
