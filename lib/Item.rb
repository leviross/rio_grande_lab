class Item
  attr_reader :quantity
  attr_accessor :name, :price, :description, :weight
  #Initializer refactor to default to weight of 0 if nil
  def initialize(name = "", price = 0, weight = 0)
    self.name = name
    self.price = price
    self.weight = weight
    @quantity = 0
    @description = ""
    @@ship_price_per_oz = 1.2
  end

  def ship_price_per_oz
    @@ship_price_per_oz
  end

  def sell amount
    if @quantity >= amount
      @quantity -= amount
      true
    else
      false
    end
  end

  def stock amount
    @quantity += amount
        #commented out below to see it in console
        #true
      end
    # added a return method
    def return amount
      @quantity += amount
        #true
      end

      def ship_price 
        if @weight == -1
          return false
        else
          return @@ship_price_per_oz * @weight
        end
      end
end

      item = Item.new("this", 30)

      # p item.weight

      # item.weight = 50

      # p item.weight





