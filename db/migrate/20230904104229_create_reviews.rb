class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :rating
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
