class CanvasUser < ApplicationRecord
  belongs_to :canvas
  belongs_to :user
end
