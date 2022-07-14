require "./character.rb"

class Monster < Character
  #モンスターの出現を定義
  def appear
    puts "#{@name}　があらわれた!"
  end

  #モンスターの攻撃を定義
  def attack(brave)
    puts "#{@name}　の攻撃!"
    damage = @offense - brave.defense / 2
    puts "#{brave.name} に#{damage}のダメージを与えた！"
    brave.hp -= damage
    #HPが0未満にならないための処理
    brave.hp = 0 if brave.hp < 0
  end

  #モンスターを倒した時の処理を定義
  def dead
    puts "#{@name}をやっつけた!"
  end
end
