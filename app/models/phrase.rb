class Phrase < ApplicationRecord
  belongs_to :category
  belongs_to :word
end
