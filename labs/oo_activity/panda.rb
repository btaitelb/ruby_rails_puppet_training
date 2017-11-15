require './animal'
require './omnomnivore'

class Panda < Animal
  extend Omnomnivore
  
  omnomname "nom nom"
  
  def initialize
    super(2)
    puts "Panda#initialize"
  end
  
  def speak
    super
    puts "nom, nom, nom!"
  end

  attr_writer :bamboo_limit
  # def bamboo_limit=(limit)
  #   @bamboo_limit = limit
  # end

  def healthy?
    name = @name
    
    if self.name == 'Po nom nom'
      (3..6).include?(@bamboo_limit)
    else
      (2..4).include?(@bamboo_limit)
    end
  end
end
