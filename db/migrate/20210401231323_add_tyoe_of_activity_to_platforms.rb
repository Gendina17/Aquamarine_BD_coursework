class AddTyoeOfActivityToPlatforms < ActiveRecord::Migration[6.0]
  def change
    add_column :platforms, :type_of_activity, :string
  end
end
