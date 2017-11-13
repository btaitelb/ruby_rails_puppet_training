# coding: utf-8
class Card
  include Comparable

  SUITS = %w(♤ ♡ ♢ ♧)
  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)

  attr_reader :suit
  attr_reader :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def <=>(otherCard)
    return nil unless otherCard.is_a?(Card)
    return VALUES.index(self.value) <=> VALUES.index(otherCard.value)
  end

  def to_s
    "#{@value}#{@suit}"
  end

  alias :inspect :to_s

end
