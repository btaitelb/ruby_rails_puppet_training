require_relative '../deck'
require 'minitest/autorun'

## Full list of matchers:
## https://ruby-doc.org/stdlib-2.1.0/libdoc/minitest/rdoc/MiniTest/Expectations.html
describe Deck do
  before do
    @deck = Deck.new
  end

  describe "When enumerating" do
    it "has 52 cards" do
      @deck.count.must_equal 52
    end

    it "returns an enumerator when not passed a block" do
      @deck.each.must_be_instance_of(Enumerator)
    end

    it "iterates through 52 cards" do
      count = 0
      @deck.each do |card|
        count += 1
      end

      count.must_equal 52
    end
  end
end
