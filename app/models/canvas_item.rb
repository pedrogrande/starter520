class CanvasItem < ApplicationRecord
  belongs_to :canvas_item_type
  belongs_to :canvas
  belongs_to :user, optional: true

  validates :name, presence: true
end
