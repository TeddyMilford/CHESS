class Game < ApplicationRecord
  validates :pgn, presence: true
end
