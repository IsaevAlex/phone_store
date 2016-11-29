class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.integer :mobile_system_id
      t.integer :mobile_producer_id
      t.integer :mobile_type_id
      t.integer :screen_id
      t.decimal :min_price
      t.decimal :max_price
      t.decimal :min_ram
      t.decimal :max_ram
      t.decimal :min_memory
      t.decimal :max_memory
      t.decimal :min_battery_charge
      t.decimal :max_battery_charge

      t.timestamps
    end
  end
end
