require_relative 'Item.rb'

class DigitalItem < Item

	
	attr_accessor :name, :price, :download_size
	def initialize(name = "", price = 0, download_size = 0)
		super(name, price)
		self.download_size = download_size
		@download_size = download_size
		@@quantity = 1
		@amount = 0
		@weight = -1
	end

	def quantity
		@@quantity
	end

	def sell amount
		@amount += amount
    end

    def return amount
        @amount += amount
    end
end

bible = DigitalItem.new "Bible", 770

p bible.download_size
# p bible.quantity
# bible.return 100
# p bible.quantity