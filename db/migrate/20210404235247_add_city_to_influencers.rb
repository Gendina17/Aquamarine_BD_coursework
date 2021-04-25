class AddCityToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers, :city, :string
  end
end
