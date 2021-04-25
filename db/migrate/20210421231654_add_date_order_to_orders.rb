class AddDateOrderToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :date_order, :date
  end
end
