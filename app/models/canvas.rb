class Canvas < ApplicationRecord
  has_many :canvas_users, dependent: :destroy
  has_many :users, through: :canvas_users
  has_many :canvas_items, dependent: :destroy

  validates :name, presence: true

  extend FriendlyId
  friendly_id :name, use: :slugged

  before_save :capitalize_name

  def capitalize_name
    self.name = self.name.capitalize
  end
end
