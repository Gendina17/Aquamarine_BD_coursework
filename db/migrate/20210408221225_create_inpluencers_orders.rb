class CreateInpluencersOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :inpluencers_orders do |t|
      t.integer :influenser_id
      t.integer :order_id

      t.timestamps
    end
  end
end
