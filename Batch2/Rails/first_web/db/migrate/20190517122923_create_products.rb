class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :brand
      t.string :size
      t.string :price

      t.timestamps
    end
  end
end
