class Game < ApplicationRecord
  belongs_to :config
  belongs_to :player1
  belongs_to :player2
end
