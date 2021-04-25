class AddInfluencerIdToTags < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :influencer_id, :integer
  end
end
