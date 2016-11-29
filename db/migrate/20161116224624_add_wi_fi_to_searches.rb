class AddWiFiToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :wi_fi, :boolean
  end
end
