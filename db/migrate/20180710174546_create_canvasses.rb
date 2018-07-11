class CreateCanvasses < ActiveRecord::Migration[5.2]
  def change
    create_table :canvasses do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :canvasses, :slug, unique: true
  end
end
