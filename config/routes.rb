Rails.application.routes.draw do
  get "/index", controller: "products", action: "index"  
  get "/products/:id" => "products#show"
  get "/product/:id" => "products#show"
end



#REST API 
#CRUD through the web + naming conventions
#Define your application routes 