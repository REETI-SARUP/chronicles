class CreateCategoryMappings < ActiveRecord::Migration
  def change
    create_table :category_mappings do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :category

      t.timestamps null: false
    end
  end
end
