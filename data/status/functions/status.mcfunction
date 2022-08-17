########################################
#
#  書き方
#    execute as @a[scores={STATUS=[ステータス設定値]}] unless score @s STATUS = @s OLD_STATUS run effect give @s [ポーション効果] 999999 [効果レベル] true
#
#  ポーション効果名（1.18現在）
#   ・移動速度上昇 speed
#   ・移動速度低下 slowness
#   ・採掘速度上昇 haste
#   ・採掘速度低下 mining_fatigue
#   ・攻撃力上昇 strength
#   ・弱体化 weakness
#   ・体力増強 health_boost
#   ・即時回復 instant_health
#   ・即時ダメージ instant_damage
#   ・跳躍力上昇 jump_boost
#   ・浮遊 levitation
#   ・低速落下 slow_falling
#   ・再生能力 regeneration
#   ・毒 poison
#   ・衰退 wither
#   ・耐性 resistance
#   ・火炎耐性 fire_resistance
#   ・衝撃吸収 absorption
#   ・水中呼吸 water_breathing
#   ・発光 glowing
#   ・透明化 invisibility
#   ・盲目 blindness
#   ・吐き気 nausea
#   ・暗視 night_vision
#   ・満腹度回復 saturation
#   ・空腹 hunger
#   ・幸運 luck
#   ・不幸 unluck
#   ・コンジットパワー conduit_power
#   ・イルカの好意 dolphins_grace
#   ・村の英雄 hero_of_the_village
#   ・不吉な予感 bad_omen
#
########################################

#ステータス：0（効果削除）
execute as @a unless score @s STATUS = @s OLD_STATUS run effect clear @s

#トリガー有効化
scoreboard players enable @a STATUS

####################################
#   ここから書き替えOK
####################################

#ステータス：1
execute as @a[scores={STATUS=1}] unless score @s STATUS = @s OLD_STATUS run effect give @s haste 999999 0 true
execute as @a[scores={STATUS=1}] unless score @s STATUS = @s OLD_STATUS run effect give @s water_breathing 999999 0 true
execute as @a[scores={STATUS=1}] unless score @s STATUS = @s OLD_STATUS run effect give @s speed 999999 0 true
execute as @a[scores={STATUS=1}] unless score @s STATUS = @s OLD_STATUS run effect give @s health_boost 999999 0 true
execute as @a[scores={STATUS=1}] unless score @s STATUS = @s OLD_STATUS run effect give @s luck 999999 0 true
execute as @a[scores={STATUS=1}] unless score @s STATUS = @s OLD_STATUS run effect give @s dolphins_grace 999999 0 true
execute as @a[scores={STATUS=1}] unless score @s STATUS = @s OLD_STATUS run effect give @s night_vision 999999 0 true
execute as @a[scores={STATUS=1}] unless score @s STATUS = @s OLD_STATUS run effect give @s hero_of_the_village 999999 0 true
execute as @a[scores={STATUS=1}] unless score @s STATUS = @s OLD_STATUS run effect give @s jump_boost 999999 0 true

#ステータス：2
execute as @a[scores={STATUS=2}] unless score @s STATUS = @s OLD_STATUS run effect give @s haste 999999 1 true
execute as @a[scores={STATUS=2}] unless score @s STATUS = @s OLD_STATUS run effect give @s water_breathing 999999 1 true
execute as @a[scores={STATUS=2}] unless score @s STATUS = @s OLD_STATUS run effect give @s speed 999999 1 true
execute as @a[scores={STATUS=2}] unless score @s STATUS = @s OLD_STATUS run effect give @s health_boost 999999 1 true
execute as @a[scores={STATUS=2}] unless score @s STATUS = @s OLD_STATUS run effect give @s luck 999999 1 true
execute as @a[scores={STATUS=2}] unless score @s STATUS = @s OLD_STATUS run effect give @s dolphins_grace 999999 1 true
execute as @a[scores={STATUS=2}] unless score @s STATUS = @s OLD_STATUS run effect give @s night_vision 999999 1 true
execute as @a[scores={STATUS=2}] unless score @s STATUS = @s OLD_STATUS run effect give @s hero_of_the_village 999999 1 true
execute as @a[scores={STATUS=2}] unless score @s STATUS = @s OLD_STATUS run effect give @s jump_boost 999999 1 true

####################################
#   ここまで書き替えOK
####################################

#古いステータスに反映
execute as @a unless score @s STATUS = @s OLD_STATUS run scoreboard players operation @s OLD_STATUS = @s STATUS
