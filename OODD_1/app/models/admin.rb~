class Admin < ActiveRecord::Base
	attr_accessor :password
	EMAIL_REGEX = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
	validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
	validates :password, length: 6..20
	validates :password, :confirmation => true
	validates :name, presence: true, length: { maximum: 50 }
	validates :name, format: { :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/ }

	before_destroy :editable?

  	def editable?
    	email != "superadmin@admin.com"
  	end
end



