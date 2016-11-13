class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.decimal :price
      t.integer :type_id
      t.integer :os_id
      t.integer :model_id
      t.integer :color_id
      t.boolean :garant
      t.boolean :on_sale
      t.boolean :4g
      t.boolean :3g
      t.boolean :wi-fi
      t.integer :battery_charge
      t.integer :memory
      t.integer :ram
      t.integer :screen_resolution
      t.integer :mobile_producer_id

      t.timestamps
    end
  end
end
