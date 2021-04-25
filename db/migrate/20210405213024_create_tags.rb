class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.integer :influencer
      t.string :tag

      t.timestamps
    end
  end
end
