class Admin::OrdersController < Admin::AdminController
	def index
		@orders = Order.order("id desc").all
	end
end