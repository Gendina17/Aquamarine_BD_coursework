class CreateSubscribers < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribers do |t|
      t.integer :platform_id
      t.integer :influencers_id
      t.integer :number_of_subscribers

      t.timestamps
    end
  end
end
