class RemoveInfluencerFromTags < ActiveRecord::Migration[6.0]
  def change
    remove_column :tags, :influencer, :integer
  end
end
