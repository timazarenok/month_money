class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :omniauthable # :trackable
  
  has_one :account
  after_create :create_account

  def create_account
    account = Account.create(user_id: self.id)
    account.save
    self.account = account
  end
end
