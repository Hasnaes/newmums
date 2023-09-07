class AddLinkToNews < ActiveRecord::Migration[7.0]
  def change
    add_column :news, :link, :string
  end
end
