class AddMailToStaffs < ActiveRecord::Migration[6.0]
  def change
    add_column :staffs, :mail, :string
  end
end
