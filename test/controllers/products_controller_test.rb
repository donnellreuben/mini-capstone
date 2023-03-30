require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "show" do
    get "/products/#{Product.first.id}.json" 

    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "image_url", "description"], data.keys
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { name: "Gatorade", price: 50, image_url: "https://imgs.search.brave.com/gUG6nrXZefSNqCaSS_MDFRBbiWaNQEdJY2jrb-W9ReE/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzcxTkt3b0VHQlZM/LmpwZw",  description: "an American brand of sports-themed beverage and food products, built around its signature line of sports drinks." }
      assert_response 200
    end
  end
end
