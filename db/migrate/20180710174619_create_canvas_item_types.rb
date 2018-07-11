class CreateCanvasItemTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :canvas_item_types do |t|
      t.string :name
      t.text :description
      t.text :question

      t.timestamps
    end
  end
end
