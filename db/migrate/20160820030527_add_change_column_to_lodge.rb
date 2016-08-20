class AddChangeColumnToLodge < ActiveRecord::Migration[5.0]
  def change
    add_column :lodges, :location, :string
    add_column :lodges, :price_info, :string
    add_column :lodges, :picture2, :string
  end
end
