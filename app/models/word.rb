class Word < ApplicationRecord
  belongs_to :category
  validates :english, presence: true, length: { minimum: 3}
  validates :normansk, presence: true, length: { minimum: 3}
end
