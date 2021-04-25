class CreateInfluencers < ActiveRecord::Migration[6.0]
  def change
    create_table :influencers do |t|
      t.string :name
      t.string :nick
      t.string :mail

      t.timestamps
    end
  end
end
