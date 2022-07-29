class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorized, only: %i[edit update destroy new create index]
  before_action :set_product, only: %i[show edit update destroy]

  # GET /products or /products.json
  def index
    @products = Product.where product_type_id: params[:product_type]
    redirect_to root_url if @products.blank?
    # commented @products = Product.all and added below code over come N+1 query problem
    # @products = Product.includes(:vendor, :product_type)
  end

  def home; end

  # GET /products/1 or /products/1.json
  def show; end

  # GET /products/new
  def new
    @product_type = ProductType.all
    @vendor = Vendor.all
    @product = Product.new
  end

  # GET /products/1/edit
  def edit; end

  # POST /products or /products.json
  def create
    # @product = Product.new(product_params)
    @product = Product.new(name: product_params[:name], product_type_id: product_params[:product_type], vendor_id: product_params[:vendor], price: product_params[:price])

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def buy
    @product = Product.find(params[:product])

    @report = Report.new user_name: current_user.name, product_name: @product.name, prod_type: @product.product_type.name, vendor_name: @product.vendor.name, product_id: @product.id, product_price: @product.price

    if @report.save
      render json: { message: 'Success' }
    else
      render json: { message: 'Failed' }
    end
  end

  private

  def authorized
    redirect_to root_url unless current_user.admin
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def product_params
    params.require(:product).permit(:name, :product_type, :vendor, :price)
  end
end
