class CreateTravelJournals < ActiveRecord::Migration
  def change
    create_table :travel_journals do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
