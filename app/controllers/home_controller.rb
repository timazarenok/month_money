class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user
      @account = Account.find(current_user.account.id)
      @account_item = AccountItem.new
    else
      redirect_to new_user_session_path
    end
  end
end
