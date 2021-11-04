class HomeController < ApplicationController

  def index
    @account = Account.first
    @account_item = AccountItem.new
  end
end
