Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "product", controller: "product", action: "product"
end


# product = Product.new(name: "Cheetos", price: 3, image_url: "https://www.cheetos.com/sites/cheetos.com/files/2019-03/Cheetos%20Crunchy_v2_0.png", description: "Bring a cheesy, delicious crunch to snack time with a bag of, CHEETOS, Crunchy Cheese-Flavored Snacks. Made with real cheese for maximum flavor.")
                      