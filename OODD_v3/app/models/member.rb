class Member < ActiveRecord::Base
	#attr_accessor :password
	EMAIL_REGEX = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
	validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
	validates :password, length: 6..20
	validates :name, presence: true, length: { maximum: 50 }
	validates :name, format: { :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/ }
	has_many :reservations
	has_many :rooms, through: :reservations

end
