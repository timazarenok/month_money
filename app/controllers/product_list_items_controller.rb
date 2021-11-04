class ProductListItemsController < ApplicationController
  before_action :set_product_list_item, only: %i[ show edit update destroy ]

  # GET /product_list_items or /product_list_items.json
  def index
    @product_list_items = ProductListItem.all
  end

  # GET /product_list_items/1 or /product_list_items/1.json
  def show
  end

  # GET /product_list_items/new
  def new
    @product_list_item = ProductListItem.new
  end

  # GET /product_list_items/1/edit
  def edit
  end

  # POST /product_list_items or /product_list_items.json
  def create
    @product_list_item = ProductListItem.new(product_list_item_params)

    respond_to do |format|
      if @product_list_item.save
        format.html { redirect_to @product_list_item, notice: "Product list item was successfully created." }
        format.json { render :show, status: :created, location: @product_list_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_list_items/1 or /product_list_items/1.json
  def update
    respond_to do |format|
      if @product_list_item.update(product_list_item_params)
        format.html { redirect_to @product_list_item, notice: "Product list item was successfully updated." }
        format.json { render :show, status: :ok, location: @product_list_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_list_items/1 or /product_list_items/1.json
  def destroy
    @product_list_item.destroy
    respond_to do |format|
      format.html { redirect_to product_list_items_url, notice: "Product list item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_list_item
      @product_list_item = ProductListItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_list_item_params
      params.require(:product_list_item).permit(:product_category_id, :value)
    end
end
