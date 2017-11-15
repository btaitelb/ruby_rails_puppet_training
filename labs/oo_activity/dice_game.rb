module DiceGame
  def roll
    die1 = rand(1..6)
    die2 = rand(1..6)

    @rolls ||= []
    @rolls << die1+die2
  end

  def last_roll
    @rolls&.last
  end

  def winner?
    puts "WARNING: override winner?"
    false
  end

  def run
    until winner?
      puts roll
    end

    puts "Winner!"
  end
end
