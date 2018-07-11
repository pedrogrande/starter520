class AddPositionToCanvasItemType < ActiveRecord::Migration[5.2]
  def change
    add_column :canvas_item_types, :position, :integer
  end
end
