class Word < ApplicationRecord
  belongs_to :category
  has_many :phrases
  validates :english, presence: true, length: { minimum: 1}
  validates :normansk, presence: true, length: { minimum: 1}
end
