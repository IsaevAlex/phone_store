class RemoveMobileOsIdFromPhones < ActiveRecord::Migration[5.0]
  def change
  	remove_column :phones, :mobile_os_id
  end
end
