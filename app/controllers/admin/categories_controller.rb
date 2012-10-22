class Admin::CategoriesController < Admin::AdminController
	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.create(params[:category])
		redirect_to admin_categories_path
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		@category.update_attributes(params[:category])
		redirect_to admin_categories_path
	end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to admin_categories_path
	end	

end