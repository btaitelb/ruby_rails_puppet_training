require 'ruby_games/card'

class Deck
  include Enumerable

  def initialize
    @cards = Card::SUITS.product(Card::VALUES).map do |s,v|
      Card.new(s, v)
    end
  end

  def shuffle
    @cards.shuffle!
    self
  end

  def each
    return enum_for(:each) unless block_given?
    @cards.each{ |c| yield c }
    self
  end

  def to_s
    "<" + @cards[0..2].map{|c| c.to_s}.join(', ') + ",... >"
  end

  alias_method :inspect, :to_s
end
