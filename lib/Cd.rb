require_relative 'Item.rb'
class Cd < Item
	attr_reader :quantity
	attr_accessor :name, :price, :tracks, :artist, :run_time

	def initialize name, price
		super(name, price)
		@tracks = 0
		@artist = ""
		@run_time = 0
	end
end