class UserBelongsToProject < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.belongs_to :project, index: true
    end
  end
end
