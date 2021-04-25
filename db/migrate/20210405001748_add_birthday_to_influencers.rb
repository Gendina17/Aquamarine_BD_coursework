class AddBirthdayToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers, :birthday, :date
  end
end
