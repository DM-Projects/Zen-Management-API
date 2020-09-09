class RemoveUsersFromProject < ActiveRecord::Migration[5.2]
  def change
    change_table :projects do |t|
      remove_column :projects, :users_id
    end
  end
end
