require_relative 'DigitalItem.rb'

class Movie < DigitalItem

	attr_reader :quantity
	attr_accessor :name, :price, :run_time, :director, :producer

	def initialize name, price
		super(name, price)
		@amount = 0
		@run_time = 0
		@director = ""
		@producer = ""
	end



end