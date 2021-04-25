class AddInfoToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers, :info, :text
  end
end
