require 'minitest/autorun'
require 'minitest/mock'
require_relative '../deck'

class DeckTest < Minitest::Test
  def setup
    @deck = Deck.new
  end
  
  def test_deck_has_52_cards
    assert_equal 52, @deck.size
  end

  def test_deck_is_enumerable
    count = 0
    @deck.each{|c| count += 1}
    assert_equal 52, count
  end

  def test_take_1_card_gives_1_card
    hand = @deck.take(1)
    assert_kind_of Array, hand
    assert_equal 1, hand.length
  end

  def test_take_5_cards_gives_5_cards
    hand = @deck.take(5)
    assert_kind_of Array, hand
    assert_equal 5, hand.length
  end

end
