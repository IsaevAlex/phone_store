class CreatePhoneColors < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_colors do |t|
      t.integer :phone_id
      t.integer :color_id

      t.timestamps
    end
  end
end
