class Account < ApplicationRecord
  belongs_to :month
  has_many :account_items
  has_one :user
end
