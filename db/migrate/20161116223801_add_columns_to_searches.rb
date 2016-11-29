class AddColumnsToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :garant, :boolean
    add_column :searches, :on_sale, :boolean
    add_column :searches, :g_4, :boolean
    add_column :searches, :g_3, :boolean
  end
end
