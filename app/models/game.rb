class Game < ApplicationRecord
  validates :name, length: { maximum: 3 }
end
