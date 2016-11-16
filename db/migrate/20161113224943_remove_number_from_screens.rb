class RemoveNumberFromScreens < ActiveRecord::Migration[5.0]
  def change
  	remove_column :screens, :number
  end
end
