class AddScreenIdToPhones < ActiveRecord::Migration[5.0]
  def change
  	add_column :phones, :screen_id, :integer
  end
end
