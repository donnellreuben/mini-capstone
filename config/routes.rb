Rails.application.routes.draw do
  get "/products/" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
end



#REST API 
#CRUD through the web + naming conventions
#Define your application routes 