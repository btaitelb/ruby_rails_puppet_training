require './dice_game'

class WaitFor7
  include DiceGame
  
  def winner?
    last_roll == 7
  end

end

WaitFor7.new.run
