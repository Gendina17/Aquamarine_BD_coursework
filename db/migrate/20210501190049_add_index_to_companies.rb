class AddIndexToCompanies < ActiveRecord::Migration[6.0]
  def change
  	add_index :companies, :mail, unique: true
  end
end
