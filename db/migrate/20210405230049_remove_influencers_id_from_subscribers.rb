class RemoveInfluencersIdFromSubscribers < ActiveRecord::Migration[6.0]
  def change
    remove_column :subscribers, :influencers_id, :integer
  end
end
