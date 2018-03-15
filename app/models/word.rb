class Word < ApplicationRecord
  belongs_to :category
  has_many :phrases,:dependent => :destroy
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates :english, presence: true, length: { minimum: 1}, uniqueness: true
  validates :normansk, presence: true, length: { minimum: 1}, uniqueness: true
end
