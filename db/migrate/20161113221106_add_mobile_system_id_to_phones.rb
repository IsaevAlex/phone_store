class AddMobileSystemIdToPhones < ActiveRecord::Migration[5.0]
  def change
    add_column :phones, :mobile_system_id, :integer
  end
end
