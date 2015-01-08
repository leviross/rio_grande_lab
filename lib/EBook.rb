require_relative 'DigitalItem.rb'

class EBook < DigitalItem

	attr_reader :quantity
	attr_accessor :name, :price, :pages, :author

	def initialize name, price
		super(name, price)
		@amount = 0
		@pages = 0
		@author = ""
	end



end