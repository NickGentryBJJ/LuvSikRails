class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :venue, null: false
      t.string :location, null: false
      t.date :date, null: false
      t.timestamps
    end
  end
end
