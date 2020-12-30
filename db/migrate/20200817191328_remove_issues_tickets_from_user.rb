class RemoveIssuesTicketsFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :issues_id
    remove_column :users, :tickets_id
  end
end
