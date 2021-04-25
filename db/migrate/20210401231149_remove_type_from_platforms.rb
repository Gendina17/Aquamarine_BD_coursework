class RemoveTypeFromPlatforms < ActiveRecord::Migration[6.0]
  def change
    remove_column :platforms, :type, :string
  end
end
