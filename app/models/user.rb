class User < ActiveRecord::Base
	has_many :cards
	has_many :user_products
	has_many :products, through: :user_products

	validates_presence_of :email, :fname, :lname, :password, presence: true 
  	validates :email, uniqueness: true, length: {minimum: 6, maximum: 20}, confirmation: true
  	validates :password, uniqueness: true, length: {minimum: 6, maximum: 20}, confirmation: true
  	validates :zip, numericality: true, length: {is: 5}


end
