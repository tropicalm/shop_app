class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :cart
  before_filter :cart_elements, :category_list

  def cart
	@cart ||= Cart.new(session)  	
  end

  def cart_elements
  	@cart_elements = Product.find(cart.products)
  end

  def category_list
  	@categories = Category.all
  end

end
