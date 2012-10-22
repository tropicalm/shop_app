class ProductsController < ApplicationController
	def index
		@products = Product.all
	end
	def show
		@product = Product.find(params[:id])
	end
	def add_to_cart
		@product = Product.find(params[:id])
		
		#begin
  		#	buyer = Buyer.find(cookies[:buyer_id])
  		#rescue ActiveRecord::RecordNotFound
  		#	buyer = Buyer.create;
  		#	cookies[:buyer_id]  = buyer.id
  		#end
  		#order = buyer.orders.create;
  		#order.orderItems.create(product: @product, price: @product.price, quantity: 1)
	end
end