class AddPriceToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :price, :int 

  end
end
