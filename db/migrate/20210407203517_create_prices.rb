class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.integer :advertesiment_kind_id
      t.integer :influencer_id
      t.integer :price
      t.integer :discount
      t.float :coefficient

      t.timestamps
    end
  end
end
