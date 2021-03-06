#!/usr/bin/env ruby

require 'sinatra'
require './deck'

set :deck, Deck.new.shuffle.to_a
set :deck_pos, 0

get '/' do
  "Try going to /card"
end

get '/card' do
  if settings.deck_pos >= settings.deck.length
    ''
  else
    card = settings.deck[settings.deck_pos]
    settings.deck_pos += 1
    card.to_s
  end
end

get '/shuffle' do
  settings.deck = Deck.new.shuffle.to_a
  settings.deck_pos = 0
  'Shuffled!'
end
