require "./character.rb"

class Brave < Character

  #ゆうしゃの攻撃を定義
  def attack(monster)
    puts "#{@name}　の攻撃!"
    damage = @offense - monster.defense / 2
    puts "#{monster.name} に#{damage}のダメージを与えた！"
    monster.hp -= damage
    #HPが0未満にならないための処理
    monster.hp = 0 if monster.hp < 0
  end
  #ゆうしゃが死んでしまった場合の表示を定義
  def dead
    puts "#{@name}はしんでしまった!"
  end
end
