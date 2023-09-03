require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get products_url
    assert_response :success
  end

  test 'should create product' do
    assert_difference('Product.count') do
      post products_url, params: { product: { name: 'Product 1', image_url: 'https://www.example.com/image.png', price: 100 } }
    end

    assert_redirected_to products_url
  end

  test 'should get new' do
    get new_product_url
    assert_response :success
  end

  test 'should validate presence of attributes' do
    product = Product.new
    assert_not product.valid?
  end
end
