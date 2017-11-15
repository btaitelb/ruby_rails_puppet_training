class Animal
  attr_reader :legs
  attr_accessor :name
  
  def initialize(legs = 4)
    @legs = legs
    puts "Animal#initialize in #{__FILE__}"
  end

  def self.classname_from_filename
    File.basename(__FILE__).sub(/\.\w+$/, '')
  end

  define_method "is_a_#{self.classname_from_filename}?" do
    true
  end

  def speak
    puts "I don't know how to speak"
    @just_ate = false
    
    self
  end

  def eat
    puts "chomp chomp"
    @just_ate = true

    self
  end
  
  def upright?
    @legs == 2 && !@just_ate
  end

  def to_s
    "Animal [#{@name}]"
  end
end

[:Dog, :Cat].each do |animal|
  eval("class #{animal}; end")
end
