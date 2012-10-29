class ProductsController < ApplicationController
	def index
		@products = @q.result(:distinct => true)
	end
	def show
		@product = Product.find(params[:id])
	end
	def add_to_cart
		@product = Product.find(params[:id])
	end
	def search
		index
		render :index
	end
end