class Cart
	def initialize(session)
		@session = session
		@session[:product_ids] ||= []
	end

	def add_product(product)
		@session[:product_ids] << product
	end

	def remove_product(product)
		@session[:product_ids].delete(product.id)
	end

	def products
		@session[:product_ids]
	end
end