class AccountItemsController < ApplicationController
  before_action :set_account_item, only: %i[ show edit update destroy ]

  # GET /account_items or /account_items.json
  def index
    @account_items = AccountItem.all
  end

  # GET /account_items/1 or /account_items/1.json
  def show
  end

  # GET /account_items/new
  def new
    @account_item = AccountItem.new
  end

  # GET /account_items/1/edit
  def edit
  end

  # POST /account_items or /account_items.json
  def create
    @account_item = AccountItem.new(account_item_params)
    @account_item.account_id = params[:account_item][:account_id]
    respond_to do |format|
      if @account_item.save
        format.html { redirect_to root_path, notice: "Account item was successfully created." }
        format.json { render :show, status: :created, location: @account_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @account_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_items/1 or /account_items/1.json
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

  # DELETE /account_items/1 or /account_items/1.json
  def destroy
    @account_item.destroy
    respond_to do |format|
      format.html { redirect_to account_items_url, notice: "Account item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_item
      @account_item = AccountItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_item_params
      params.require(:account_item).permit(:category_id, :value)
    end
end
