require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	def setup
		@product = Product.new(sku:"HS001", title:"Title", artist:"Artist", format:"7\"")
	end

  test "product should always contain an sku" do
  	@product.sku = nil
    assert_not @product.valid?

    @product.sku = "   "
    assert_not @product.valid?

    @product.sku = "a unique SKU"
    assert @product.valid?
  end

  test "product sku should be unique" do
  	new_product = @product.dup
  	@product.save()
  	assert_not new_product.save()
  	assert_not new_product.valid?
  end
end