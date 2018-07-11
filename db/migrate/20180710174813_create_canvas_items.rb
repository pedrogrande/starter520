class CreateCanvasItems < ActiveRecord::Migration[5.2]
  def change
    create_table :canvas_items do |t|
      t.belongs_to :canvas_item_type, foreign_key: true
      t.belongs_to :canvas, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
