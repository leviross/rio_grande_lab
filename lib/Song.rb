require_relative 'DigitalItem.rb'

class Song < DigitalItem

	attr_reader :quantity
	attr_accessor :name, :price, :run_time, :artist

	def initialize name, price
		super(name, price)
		@amount = 0
		@run_time = 0
		@artist = ""
	end

end


song = Song.new "Bla Bla", 20

p song.ship_price