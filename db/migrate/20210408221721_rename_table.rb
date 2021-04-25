class RenameTable < ActiveRecord::Migration[6.0]
  def change
  rename_table :inpluencers_orders, :influencers_orders
  end
end
