class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :title
      t.text :description
      t.string :author
      t.date :date

      t.timestamps
    end
  end
end
