class CreateMobileProducers < ActiveRecord::Migration[5.0]
  def change
    create_table :mobile_producers do |t|
      t.string :name

      t.timestamps
    end
  end
end
