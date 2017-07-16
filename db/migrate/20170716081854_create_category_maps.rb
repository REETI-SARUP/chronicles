class CreateCategoryMaps < ActiveRecord::Migration
  def change
    create_table :category_maps do |t|
      t.references :User, index: true, foreign_key: true
      t.integer :category

      t.timestamps null: false
    end
  end
end
