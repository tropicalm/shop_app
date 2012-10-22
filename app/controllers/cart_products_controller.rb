class CartProductsController < ApplicationController
	def index
		"new cart"
	end

	def create
		product = Product.find(params[:product_id])
		cart.add_product(product.id)
		flash[:notice] = "Produkt dodano do koszyka"
		redirect_to product_path(product)
	end

	def edit
		render_text "abc"
	end
end