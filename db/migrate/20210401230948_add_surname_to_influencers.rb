class AddSurnameToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_column :influencers, :surname, :string
  end
end
