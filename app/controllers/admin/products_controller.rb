class Admin::ProductsController < Admin::AdminController
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
		@categories_map = Category.all.map { |c| [c.name, c.id] }
	end

	def create
		@category = Category.find(params[:product][:category_id])
		params[:product].delete(:category_id)
		@category.products.create(params[:product])
		redirect_to admin_products_path
	end

	def edit
		@categories_map = Category.all.map { |c| [c.name, c.id] }
		@product = Product.find(params[:id])
	end

	def update
		category = Category.find(params[:product][:category_id])
		params[:product].delete(:category_id)
		@product = Product.find(params[:id])
		@product.category = category
		@product.update_attributes(params[:product])
		redirect_to admin_products_path
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to admin_products_path
	end	
end