class AddMailToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :mail, :string
  end
end
