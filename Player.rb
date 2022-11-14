class Player
  attr_accessor :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

end

# p = Player.new("Player One")
# p2 = Player.new("Player Two")
# puts p.lives
# puts p.name
# puts p2.lives
# puts p2.name