class ProductsController < ApplicationController
 
 	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		@product.save
		@products = Product.all	
	end
private
	def product_params
		params.require(:product).permit(:name, :description, :price, :expires_on)
	end
end
