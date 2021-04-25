class AddAvatarToStaffs < ActiveRecord::Migration[6.0]
  def change
    add_column :staffs, :avatar, :string
  end
end
