class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string :title
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
