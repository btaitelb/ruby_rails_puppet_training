#!/usr/bin/env ruby
# coding: utf-8

SUITS = %w(♠ ♥ ♦ ♣)
VALUES = (2..10).to_a + %w(J Q K A)
DECK = VALUES.product(SUITS).map(&:join)

def pick(n)
  hand = DECK.shuffle.take(n)
  hand.each do |card|
    puts card
    if card =~ /^A/
      puts "Winner!"
      break
    end
  end
end

def run
  if ARGV.length == 0
    $stderr.puts "No number given for the hand size, using 5"
    hand_size = 5
  else
    hand_size = ARGV[0].to_i
  end

  pick(hand_size)
end

run
