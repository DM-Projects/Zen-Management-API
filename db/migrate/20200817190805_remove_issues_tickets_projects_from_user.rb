class RemoveIssuesTicketsProjectsFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :projects_id
  end
end
