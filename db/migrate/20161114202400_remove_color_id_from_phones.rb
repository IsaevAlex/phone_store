class RemoveColorIdFromPhones < ActiveRecord::Migration[5.0]
  def change
    remove_column :phones, :color_id, :integer
  end
end
