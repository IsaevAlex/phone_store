class AddRgbCodeToColors < ActiveRecord::Migration[5.0]
  def change
    add_column :colors, :rgb_code, :string
  end
end
