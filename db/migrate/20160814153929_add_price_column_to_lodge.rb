class AddPriceColumnToLodge < ActiveRecord::Migration[5.0]
  def change
    add_column :lodges, :price, :integer
  end
end
