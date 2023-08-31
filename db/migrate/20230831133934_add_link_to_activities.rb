class AddLinkToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :link, :string
  end
end
