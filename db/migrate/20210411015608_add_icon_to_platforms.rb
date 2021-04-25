class AddIconToPlatforms < ActiveRecord::Migration[6.0]
  def change
    add_column :platforms, :icon, :string
  end
end
