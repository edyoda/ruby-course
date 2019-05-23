class RemoveColumnUserMobile < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :mobile
  end
end
