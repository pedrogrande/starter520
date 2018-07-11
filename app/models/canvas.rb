class Canvas < ApplicationRecord
  has_many :canvas_users, dependent: :destroy
  has_many :users, through: :canvas_users
  has_many :canvas_items, dependent: :destroy

  validates :name, presence: true

  extend FriendlyId
  friendly_id :name, use: :slugged
end
