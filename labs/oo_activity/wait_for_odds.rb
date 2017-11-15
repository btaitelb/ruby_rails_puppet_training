require './dice_game'

class WaitForOdds
  include DiceGame
  
  def winner?
    @rolls ||= []
    if @rolls.size >= 3
      @rolls[-3..-1].all?{|r| r % 2 == 1}
    else
      false
    end
  end
  
end

WaitForOdds.new.run
