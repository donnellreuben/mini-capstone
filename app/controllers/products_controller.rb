class ProductsController < ApplicationController
  def index
    # render json: {message: "We love products"}
  
    @products = Product.all
    # render json: @products This will render the same but with "created_at"
    render :index



  end

  def show 
    @product = Product.find_by(id: params[:id])
    render :show
  end

  def create
    # make a new recipe in the db
    # p params[:title]
    p params[:name]

    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )

    @product = Product.new(
      name: "Gatorade", price: 50, image_url: "https://imgs.search.brave.com/gUG6nrXZefSNqCaSS_MDFRBbiWaNQEdJY2jrb-W9ReE/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzcxTkt3b0VHQlZM/LmpwZw", description: "an American brand of sports-themed beverage and food products, built around its signature line of sports drinks.")
    @product.save
    render :show
  end

end



