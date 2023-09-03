class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)

    if @product.valid?
      @product.save
      redirect_to products_path
    else
      alert = @product.errors.full_messages.join(', ')
      redirect_to new_product_path, alert:
    end
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :image_url)
  end
end
