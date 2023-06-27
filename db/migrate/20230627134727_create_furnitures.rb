class CreateFurnitures < ActiveRecord::Migration[7.0]
  def change
    create_table :furnitures do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :style
      t.string :finishing
      t.decimal :price
      t.integer :height
      t.integer :width
      t.integer :depth

      t.timestamps
    end
  end
end
