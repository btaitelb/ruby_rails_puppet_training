#!/usr/bin/env ruby

require './deck'

card1, card2 = Deck.new.shuffle.take(2)
puts "Player 1: #{card1}"
puts "Player 2: #{card2}"

if card1 > card2
  puts "Player 1 Wins!"
elsif card1 < card2
  puts "Player 2 Wins!"
else
  puts "Tie!!!"
end
