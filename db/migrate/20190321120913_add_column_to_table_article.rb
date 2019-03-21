class AddColumnToTableArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :table_articles, :photo, :boolean
  end
end
