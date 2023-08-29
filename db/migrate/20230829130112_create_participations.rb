class CreateParticipations < ActiveRecord::Migration[7.0]
  def change
    create_table :participations do |t|
      t.references :activity_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
