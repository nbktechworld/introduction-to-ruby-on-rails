class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    product_params = params.require(:product).permit(:title, :description)
    product = Product.new(product_params)
    product.save
    # TODO: validation / error etc

    redirect_to :products
  end
end
