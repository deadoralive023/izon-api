class ChangePriceTypeToFloatInItems < ActiveRecord::Migration[6.1]
  def change

    reversible do |dir|
      change_table :items do |t|
        dir.up   { t.change :price, :integer }
        dir.down { t.change :price, :float }
      end
    end

  end
end
