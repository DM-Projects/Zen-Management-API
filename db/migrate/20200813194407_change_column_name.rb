class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :issues, :type, :i_type
  end
end
