class Category < ApplicationRecord
    has_many :words
    has_many :phrases
    validates :english, presence: true, length: { minimum: 3}
    validates :normansk, presence: true, length: { minimum: 3}
end
