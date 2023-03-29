class ProductsController < ApplicationController
  def product
    # render json: {message: "Product"}
  
    @product = Product.all
    render template: "products/show"
  end

end
