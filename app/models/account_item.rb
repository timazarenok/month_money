class AccountItem < ApplicationRecord
  belongs_to :category
  belongs_to :account
end
