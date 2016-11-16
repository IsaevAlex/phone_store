class DropMobileOs < ActiveRecord::Migration[5.0]
  def change
  	drop_table :mobile_os
  end
end
