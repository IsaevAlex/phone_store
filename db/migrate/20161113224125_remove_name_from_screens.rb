class RemoveNameFromScreens < ActiveRecord::Migration[5.0]
  def change
  	remove_column :screens, :name
  end
end
