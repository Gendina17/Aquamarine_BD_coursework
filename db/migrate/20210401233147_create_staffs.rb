class CreateStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :surname
      t.integer :work_experience
      t.string :position
      t.integer :number_of_orders

      t.timestamps
    end
  end
end
