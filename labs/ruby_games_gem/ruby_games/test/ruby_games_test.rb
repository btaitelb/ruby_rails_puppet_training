require 'test_helper'

class RubyGamesTest < Minitest::Test
  def setup
    @deck = Deck.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::RubyGames::VERSION
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
