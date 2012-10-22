class CartProductsController < ApplicationController
	def index
		"new cart"
	end

	def create
		product = Product.find(params[:product_id])
		cart.add_product(product.id)
		flash[:notice] = "Produkt dodano do koszyka"
		redirect_to :back
	end

	def destroy
		cart.remove_product(params[:id])
		flash[:notice] = "Produkt dodano do koszyka"
		redirect_to :back
	end
end