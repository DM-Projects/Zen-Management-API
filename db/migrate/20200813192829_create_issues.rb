class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :type
      t.string :title
      t.string :description
      t.string :label

      t.timestamps
    end
  end
end
