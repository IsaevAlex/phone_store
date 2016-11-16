class AddNumberToScreens < ActiveRecord::Migration[5.0]
  def change
    add_column :screens, :number, :integer
  end
end
