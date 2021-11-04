class ProductListItem < ApplicationRecord
  belongs_to :product_category
  belongs_to :product_list
end
