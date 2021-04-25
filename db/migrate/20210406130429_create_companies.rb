class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.date :start_of_cooperation
      t.integer :successful_orders
      t.integer :staff_id

      t.timestamps
    end
  end
end
