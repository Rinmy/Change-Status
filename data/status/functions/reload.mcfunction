#読み込み後のメッセージ
tellraw @p {"text":"データパック読み込み完了","bold":true,"color":"aqua"}
tellraw @p {"text":"コマンド一覧（クリック）","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/tellraw @a {\"text\":\"────────────────\\n [Player]のステータスを[n]に変更\\n /scoreboard players set [Player] STATUS [n]\\n\\n 自分のステータスを[n]に変更\\n /trigger STATUS set [n]\\n\\n ステータス表示(非表示)\\n /function settings:display/show(hide)\\n────────────────\"}"}}
