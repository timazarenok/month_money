class AddColumnsToProductListItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_list_items, :product_list, foreign_key: true
  end
end
