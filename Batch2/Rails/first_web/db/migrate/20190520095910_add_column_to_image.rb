class AddColumnToImage < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :entity_id, :integer
    add_column :images, :entity_type, :string
  end
end
