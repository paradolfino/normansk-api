class Phrase < ApplicationRecord
  belongs_to :category
  belongs_to :word
  validates :english, presence: true, length: { minimum: 3}
  validates :normansk, presence: true, length: { minimum: 3}
end
