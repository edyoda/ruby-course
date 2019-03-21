class CreateTableArticle < ActiveRecord::Migration[5.2]
  def change
    create_table :table_articles do |t|
      t.string :title
      t.string :content
    end
  end
end
