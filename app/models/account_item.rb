class AccountItem < ApplicationRecord
  belongs_to :category
  belongs_to :account

  def add_value(value)
    self.value += value.to_i
  end
end
