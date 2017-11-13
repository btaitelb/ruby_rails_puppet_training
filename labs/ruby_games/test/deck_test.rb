require_relative '../deck'
require 'minitest/autorun'

## full list of assertions:
## http://ruby-doc.org/stdlib-2.0.0/libdoc/minitest/rdoc/MiniTest/Assertions.html
class DeckTest < MiniTest::Unit::TestCase
  def setup
    @deck = Deck.new
  end

  def test_has_52_cards
    assert_equal 52, @deck.count
  end

  def test_cards_enumerator
    assert_instance_of(Enumerator, @deck.each)
  end

  def test_enumerable
    count = 0
    @deck.each do |card|
      count += 1
    end
    assert_equal 52, count
  end
end
