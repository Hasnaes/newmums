class AddThemeToNews < ActiveRecord::Migration[7.0]
  def change
    add_column :news, :theme, :string
  end
end
