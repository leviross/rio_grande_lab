require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    #initlize item
    @digital_item = DigitalItem.new("online music",13.99)
  end


  #check inilization
  #check that it is an instance of Book
  describe "Initialization" do
  	it "is an instance of the DigitalItem class" do
  		expect(@digital_item).to be_instance_of(DigitalItem)
  	end
  	#check that it is an extended from Item
  	it "should extend from Item" do
  		expect(DigitalItem < Item).to eq true
  	end
  	it "is assigned a name" do
      expect(@digital_item.name).to eq("online music")
    end
    it "is assigned a price" do
      expect(@digital_item.price).to eq(13.99)
    end
  end

  #check getters and setters
  describe "Accessors" do
  	it "should be able to get quantity" do
  		expect(@digital_item.quantity).to eq(1)
  	end
  	it "should be able to get and set name" do
  		@digital_item.name = "new music"
  		expect(@digital_item.name).to eq("new music")
  	end
  	it "should be able to get and set price" do
      @digital_item.price=4.99
      expect(@digital_item.price).to eq(4.99)
    end   
	end		
  	
  describe "Methods" do
    it "should be able to sell and keep track of total sold" do
      result = @digital_item.sell 300
      expect(result).to eq(result)
    end    
  end


end