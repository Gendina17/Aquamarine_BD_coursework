class CreateAdvertesimentKinds < ActiveRecord::Migration[6.0]
  def change
    create_table :advertesiment_kinds do |t|
      t.integer :platform_id
      t.string :kinds
      t.float :influence_coefficient

      t.timestamps
    end
  end
end
