class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :image
      t.string :title
      t.string :description
      t.integer :price
      t.string :shop

      t.timestamps
    end
  end
end
