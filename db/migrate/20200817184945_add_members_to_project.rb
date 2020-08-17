class AddMembersToProject < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :users, foreign_key: true
  end
end
