class OrdersController < ApplicationController
	def create
		buyer = Buyer.new
		buyer.first_name = params[:first_name]
		buyer.last_name = params[:last_name]
		buyer.save
		buyer.orders.create
		@cart_elements.each do |product|
			buyer.orders.last.order_items.create(product: product)
		end
		cart.clear
	end
end