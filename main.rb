require "./brave.rb"
require "./monster.rb"
require "./character.rb"

#インスタンス化でゆうしゃとモンスターを作成
brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)

#残りHPを表示するためのメソッドを定義
def show_status(brave, monster)
  puts <<~TEXT
         *=*=*=*=*=*=*=*=*=*=*
         【#{brave.name}】HP: #{brave.hp}
         【#{monster.name}】HP: #{monster.hp}
         *=*=*=*=*=*=*=*=*=*=*
       TEXT
end

#=== ここから戦闘のプログラム ===
#モンスターの出現
monster.appear

#どちらかのHPが0になるまで戦闘する
while true
  brave.attack(monster)
  show_status(brave, monster)
  break if brave.hp == 0 || monster.hp == 0
  monster.attack(brave)
  show_status(brave, monster)
  break if brave.hp == 0 || monster.hp == 0
end

#どちらかのHPが0になったら終了
if brave.hp == 0
  brave.dead
elsif monster.hp == 0
  monster.dead
end

#=== 終了 ===
