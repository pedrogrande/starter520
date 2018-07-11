class CreateCanvasUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :canvas_users do |t|
      t.belongs_to :canvas, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
