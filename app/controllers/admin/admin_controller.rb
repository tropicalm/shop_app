class Admin::AdminController < ApplicationController
	before_filter :authenticate_admin_admin_user!
	before_filter :is_admin?

	def is_admin?
		@is_admin = admin_admin_user_signed_in?
	end
end