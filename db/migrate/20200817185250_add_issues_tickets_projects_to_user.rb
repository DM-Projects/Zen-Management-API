class AddIssuesTicketsProjectsToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :issues, foreign_key: true
    add_reference :users, :tickets, foreign_key: true
    add_reference :users, :projects, foreign_key: true
  end
end
