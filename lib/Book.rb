require_relative 'Item.rb'

class Book < Item
	attr_reader :quantity
	attr_accessor :name, :price, :pages, :author

    def initialize name, price
        super(name,price)
        @pages = 0
        @author = ""
    end





end

bible = Book.new "Bible", 770

bible.weight = 2
#p bible.ship_price






# bible.stock 200
# bible.stock 200
# p bible.quantity
# bible.return 100
# p bible.quantity

