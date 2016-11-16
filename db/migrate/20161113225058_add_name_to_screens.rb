class AddNameToScreens < ActiveRecord::Migration[5.0]
  def change
    add_column :screens, :name, :string
  end
end
