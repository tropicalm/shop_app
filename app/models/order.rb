class Order < ActiveRecord::Base
	attr_accessible :order_items, :buyer

	has_many :order_items
	belongs_to :buyer
end