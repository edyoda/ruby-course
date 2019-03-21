class RemoveColumnTableArticle < ActiveRecord::Migration[5.2]
  def change
    remove_column :table_articles, :photo
  end
end
