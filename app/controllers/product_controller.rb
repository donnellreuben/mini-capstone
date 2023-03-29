class ProductController < ApplicationController

  def product
    render json: {message: "Product"}
  end

end
