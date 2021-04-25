class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :staff_id
      t.integer :company_id
      t.integer :advertesiment_kind_id
      t.string :product

      t.timestamps
    end
  end
end
