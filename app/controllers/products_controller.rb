class ProductsController < ApplicationController
  protect_from_forgery with: :exception, unless: -> { request.format.json? }

#INDEX
  def index                                    
    @products = Product.all
    render :index
  end

#CREATE
  def create
    @product = Product.create(
			name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
	)
    render :show
  end

#SHOW
  def show                                        
    @product = Product.find_by(id: params[:id])
    render :show
  end

#UPDATE
  def update            
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price]|| @product.price,
      image_url: params[:image_url] || @product.image_url,
      description: params[:description] || @prdocut.description
      )
    render :show
  end

#DESTROY
  def destroy
    @photo = Photo.find_by(id: params[:id])
    @photo.destroy
    render json: { message: "Photo destroyed successfully" }
  end 

#FIN
end