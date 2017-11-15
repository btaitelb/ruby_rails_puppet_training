#!/usr/bin/env ruby

cards = [ 'AS', 'KH', '8D', 'QS', 'JH' ]
for card in cards.shuffle.take(5)
  puts card
  if card[0] == 'A'
    puts "You Win!"
    break
  end
end
