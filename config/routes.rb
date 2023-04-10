Rails.application.routes.draw do
  # get "/products/" => "products#index"
  # get "/products/:id" => "products#show"
  # post "/products" => "products#create"
  # patch "/products/:id" => "products#update"
  # delete "/products/:id" => "products#destroy"
  resources :products
  get "/suppliers" => "products#supplier_index"
  get "/suppliers/:id" => "products#supplier_show"
  post "/suppliers" => "products#supplier_create"
  patch "/suppliers/:id" => "products#supplier_update"
  delete "/suppliers/:id" => "products#supplier_destroy"
  
end



#REST API 
#CRUD through the web + naming conventions
#Define your application routes 