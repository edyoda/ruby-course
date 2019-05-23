class AddColumnToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :entity_id, :integer
    add_column :articles, :entity_type, :string
  end
end
