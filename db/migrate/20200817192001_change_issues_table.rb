class ChangeIssuesTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :issues, :user_id
  end
end
