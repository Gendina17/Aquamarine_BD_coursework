class AddMainToSubscribers < ActiveRecord::Migration[6.0]
  def change
    add_column :subscribers, :main, :boolean
  end
end
