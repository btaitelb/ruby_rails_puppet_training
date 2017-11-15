require 'minitest/autorun'

class ExampleTest < Minitest::Test
  def test_integer_division_returns_integers
    assert_equal 3, 10/3
  end
end
