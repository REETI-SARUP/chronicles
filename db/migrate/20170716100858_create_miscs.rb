class CreateMiscs < ActiveRecord::Migration
  def change
    create_table :miscs do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.string :title

      t.timestamps null: false
    end
  end
end
