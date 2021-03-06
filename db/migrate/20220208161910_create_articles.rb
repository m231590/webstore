class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :seller
      t.integer :quantity
      t.numeric :rating
      t.numeric :price

      t.timestamps
    end
  end
end
