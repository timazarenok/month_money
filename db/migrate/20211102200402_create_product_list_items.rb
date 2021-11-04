class CreateProductListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :product_list_items do |t|
      t.references :product_category, foreign_key: true
      t.decimal :value

      t.timestamps
    end
  end
end
