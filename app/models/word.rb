class Word < ApplicationRecord
  belongs_to :category
  validates :english, presence: true, length: { minimum: 1}
  validates :normansk, presence: true, length: { minimum: 1}
end
