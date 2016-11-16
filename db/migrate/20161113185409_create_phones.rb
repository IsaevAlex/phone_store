class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.decimal :price
      t.integer :mobile_type_id
      t.integer :mobile_os_id
      t.integer :mobile_model_id
      t.integer :color_id
      t.boolean :garant
      t.boolean :on_sale
      t.boolean :g_4
      t.boolean :g_3
      t.boolean :wi_fi
      t.integer :battery_charge
      t.integer :memory
      t.integer :ram
      t.integer :screen_resolution
      t.integer :mobile_producer_id

      t.timestamps
    end
  end
end
