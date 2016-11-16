class AddMobileProducerIdToMobileModels < ActiveRecord::Migration[5.0]
  def change
    add_column :mobile_models, :mobile_producer_id, :integer
  end
end
