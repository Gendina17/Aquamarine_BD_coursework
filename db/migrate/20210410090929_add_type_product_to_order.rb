class AddTypeProductToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :type_product, :string
  end
end
