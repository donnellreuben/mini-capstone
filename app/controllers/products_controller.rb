class ProductsController < ApplicationController
  def index
    # render json: {message: "We love products"}
  
    @product = Product.all
    render json: @products
  end

end
