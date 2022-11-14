require_relative './Player.rb'
require_relative './Question.rb'

class Game

  attr_accessor :player_one, :player_two, :current_player

  def initialize
    @player_one = Player.new("Player One")
    @player_two = Player.new("Player Two")
    @current_player = @player_one
    @game_over = false
    @q = nil
  end

  def start
    until @game_over
      ask_question
      answer = gets.chomp.to_i
      isCorrect = answer_question(answer, @current_player.name)
      if !isCorrect
        @current_player.lives -= 1
        if @current_player.lives == 0
          @game_over = true
        end
      end
      switch_player
    end
    puts "#{@current_player.name} wins with a score of #{current_player.lives} / 3!"
    puts "---- GAME OVER ----"
    puts "Goodbye!"
  end

  def switch_player
    if @current_player == @player_one
      @current_player = @player_two
    else
      @current_player = @player_one
    end
    puts "P1: #{@player_one.lives} / 3 vs. P2: #{@player_two.lives} / 3"
    puts "---- NEW TURN ----"
  end

  def ask_question
    @q = Question.new
    puts "#{@current_player.name}, #{@q.question}"
  end

  def answer_question(answer, player)
    if answer == @q.answer
      puts "#{player}, YES! you are correct!"
      return true
    else 
      puts "#{player}, Seriously? No!"
      return false
    end
  end
end

g = Game.new
g.start