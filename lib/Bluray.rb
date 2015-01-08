require_relative 'Item.rb'

class Bluray < Item


	attr_reader :quantity
	attr_accessor :name, :price, :run_time, :director, :producer

	def initialize name, price
		super(name, price)
		@run_time = 0
		@director = ""
		@producer = ""
	end
end



