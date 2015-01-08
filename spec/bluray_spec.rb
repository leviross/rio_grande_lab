require_relative 'spec_helper'
require_relative '../lib/Bluray'


describe Bluray do

  before(:context) do
    #initlize item
    @bluray = Bluray.new("Oldschool", 25.50)
  end


  #check inilization
  #check that it is an instance of Bluray
  describe "Initialization" do
  	it "is an instance of the Bluray class" do
  		expect(@bluray).to be_instance_of(Bluray)
  	end
  	#check that it is an extended from Item
  	it "should extend from Item" do
  		expect(Bluray < Item).to eq true
  	end
  	it "is assigned a name" do
      expect(@bluray.name).to eq("Oldschool")
    end
    it "is assigned a price" do
      expect(@bluray.price).to eq(25.50)
    end
  end

  #check getters and setters
  describe "Accessors" do
  	it "should be able to get quantity" do
  		expect(@bluray.quantity).to eq(0)
  	end
  	it "should be able to get and set name" do
  		@bluray.name = "Wedding Crashers"
  		expect(@bluray.name).to eq("Wedding Crashers")
  	end
  	it "should be able to get and set price" do
      @bluray.price=34.99
      expect(@bluray.price).to eq(34.99)
    end   
    it "should be able to get and set run_time" do
      expect(@bluray.run_time).to eq(0)
      @bluray.run_time=50
      expect(@bluray.run_time).to eq(50)
    end 
    it "should be able to get and set director" do
    	expect(@bluray.director).to eq("")
    	@bluray.director = "My director"
  		expect(@bluray.director).to eq("My director")
  	end
  	it "should be able to get and set producer" do
    	expect(@bluray.producer).to eq("")
    	@bluray.producer = "My producer"
  		expect(@bluray.producer).to eq("My producer")
  	end

	end		
  	
  describe "Methods" do
    it "should be able to stock" do
      result = @bluray.stock 5
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @bluray.sell 6
      expect(result).to eq(false)
      expect(@bluray.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @bluray.sell 3
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(2)
    end    
  end


end