class AddAvatarToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers, :avatar, :string
  end
end
