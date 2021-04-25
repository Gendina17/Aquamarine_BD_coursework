class RemoveInfluenserIdFromInfluencersOrder < ActiveRecord::Migration[6.0]
  def change
    remove_column :influencers_orders, :influenser_id, :integer
  end
end
