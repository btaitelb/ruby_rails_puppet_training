require 'minitest/autorun'
require_relative '../card'

class CardTest < Minitest::Test
  
  def test_face_card_says_its_a_face_card
    assert Card.new('K', :hearts).is_face?
    assert Card.new('Q', :spades).is_face?
  end

  def test_non_face_card_says_its_not_a_face_card
    assert !Card.new('6', :hearts).is_face?
  end
end
