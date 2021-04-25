class AddInfluencerIdToSubscribers < ActiveRecord::Migration[6.0]
  def change
    add_column :subscribers, :influencer_id, :integer
  end
end
