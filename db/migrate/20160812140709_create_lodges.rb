class CreateLodges < ActiveRecord::Migration[5.0]
  def change
    create_table :lodges do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.string :url
      t.text :description
      t.boolean :available
      t.string :picture

      t.timestamps
    end
  end
end
