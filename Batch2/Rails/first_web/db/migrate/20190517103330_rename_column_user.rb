class RenameColumnUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :mobile_no, :mobile
  end
end
