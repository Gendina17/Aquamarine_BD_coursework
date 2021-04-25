class AddAgeOfSubscribersToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers, :age_of_subscribers, :string
  end
end
