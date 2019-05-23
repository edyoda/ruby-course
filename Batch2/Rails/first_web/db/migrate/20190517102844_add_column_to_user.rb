class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :mobile_no, :string
  end
end
