class AccountItemsController < ApplicationController
  before_action :set_account_item, only: %i[ show edit update destroy ]

  def index
    @account_items = AccountItem.all
  end

  def show
  end

  def new
    @account_item = AccountItem.new
  end

  def edit
  end

  def create
    @account_item            = AccountItem.new(account_item_params)
    account_id               = params[:account_item][:account_id]
    @account_item.account_id = account_id

    account       = Account.find(account_id)
    account_items = account.account_items
    similar_item  = account_items.find_by(category_id: account_item_params[:category_id]) 
    has_similar   = false

    if similar_item
      has_similar = true
      similar_item.add_value(account_item_params[:value])
      similar_item.save
    else
      @account_item.save
    end

    respond_to do |format|
      if has_similar
        format.html { redirect_to root_path, notice: "Account item was successfully updated." }
        format.json { render :show, status: :created, location: @account_item }
      else
        format.html { redirect_to root_path, notice: "Account item was successfully created." }
        format.json { render :show, status: :created, location: @account_item }
      end
    end
  end

  def update
    respond_to do |format|
      if @account_item.update(account_item_params)
        format.html { redirect_to @account_item, notice: "Account item was successfully updated." }
        format.json { render :show, status: :ok, location: @account_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @account_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @account_item.destroy
    respond_to do |format|
      format.html { redirect_to account_items_url, notice: "Account item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_account_item
      @account_item = AccountItem.find(params[:id])
    end

    def account_item_params
      params.require(:account_item).permit(:category_id, :value)
    end
end
