class Player
  def hand

    puts "Please enter a number."
    puts "0:Rock, 1:Scissors, 2:Paper"
    input_hand = gets.to_i
     while input_hand < 0 or input_hand > 2 do
        puts "Please enter a correct number (from 0 to 2)"
        input_hand = gets.to_i
      end
      puts "You chose #{input_hand}"
      input_hand
  end
end

class Enemy
  def enemy_hand
    random_number = rand(0..2)
    puts "The computer randomly picked #{random_number}"
    random_number
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    difference = player_hand.to_i - enemy_hand.to_i
    result = (difference +3)%3
    if result  == 1
      puts "you lose"
    elsif result == 2
      puts " you win"
    else
      puts "it's a draw, let's play again"
      player = Player.new
      enemy = Enemy.new
      janken = Janken.new
      next_game = janken.pon(player.hand, enemy.enemy_hand)
    end
  end
end
player = Player.new
enemy = Enemy.new
janken = Janken.new
next_game = janken.pon(player.hand, enemy.enemy_hand)
