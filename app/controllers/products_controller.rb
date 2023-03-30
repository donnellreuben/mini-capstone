class ProductsController < ApplicationController
  def index
    # render json: {message: "We love products"}
  
    @products = Product.all
    # render json: @products This will render the same but with "created_at"
    render template: "products/index"



  end

  def show 
    @product = Product.find_by(id: params[:id])
    render :show
  end




end



