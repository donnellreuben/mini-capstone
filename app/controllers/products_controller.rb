class ProductsController < ApplicationController
  def index
    # render json: {message: "We love products"}
  
    @products = Product.all
    # render json: @products
    render template: "products/index"
  end

end
