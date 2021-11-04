class CreateProductLists < ActiveRecord::Migration[5.2]
  def change
    create_table :product_lists do |t|
      t.references :month, foreign_key: true
      t.integer :year
      t.decimal :value

      t.timestamps
    end
  end
end
