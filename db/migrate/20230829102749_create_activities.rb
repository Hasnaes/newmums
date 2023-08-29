class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :capacity
      t.integer :price
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
