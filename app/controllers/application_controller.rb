class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :cart
  before_filter :cart_elements, :category_list, :product_search

  def cart
    @cart ||= Cart.new(session)  	
  end

  def cart_elements
  	@cart_elements = Product.find(cart.products)
  	@cart_sum = @cart_elements.reduce(0){|sum, el| sum + el.price }
  end

  def category_list
  	@categories = Category.all
  end

  def product_search
    @q = Product.search(params[:q])
  end
end
