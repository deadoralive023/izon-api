class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :stock
      t.string :image_url

      t.timestamps
    end
  end
end
