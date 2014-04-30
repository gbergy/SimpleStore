class Card < ActiveRecord::Base
	belongs_to :user

	validates :type, presence: true, inclusion: {in: ["MasterCard", "Visa", "AmericanExpress", "Discover"]}
	validates :number, presence: true, length: {is: 16}, numericality: true, confirmation: true, presence: true
	validates :code, presence: true, length: {is: 3}, numericality: true, confirmation: true, presence: true 
end
