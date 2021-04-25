class AddInfluencerIdToInfluencersOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers_orders, :influencer_id, :integer
  end
end
