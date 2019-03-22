class RemoveColumnsFromImage < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :product_id, :string
    remove_column :images, :user_id, :string
  end
end
