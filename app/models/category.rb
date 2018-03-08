class Category < ApplicationRecord
    has_many :words
    has_many :phrases
    validates presence: true,
end
