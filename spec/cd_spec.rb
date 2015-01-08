require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

	
  
  before(:context) do
    #initlize item
    @cd = Cd.new("metallica", 18.99)
  end

  #check inilization
  #check that it is an instance of Cd
  describe "Initialization" do
  	it "is an instance of Cd class" do
  		expect(@cd).to be_instance_of(Cd)
  	end
  	#check that it is an extended from Item
  	it "should extend from Item" do
  		expect(Cd < Item).to eq(true)
  	end
  	it "is assigned a name" do
      expect(@cd.name).to eq("metallica")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(18.99)
    end
  end
	#check getters and setters
	describe "Accessors" do
    it "should be able to get and set tracks" do
    	expect(@cd.tracks).to eq(0)
      @cd.tracks = 10
      expect(@cd.tracks).to eq(10)
    end
    it "should be able to get and set artist" do
    	expect(@cd.artist).to eq("")
      @cd.artist="New artist"
      expect(@cd.artist).to eq("New artist")
    end   
    it "should be able to get and set price" do
      @cd.price=44.99
      expect(@cd.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@cd.description).to eq("")
      @cd.description="test"
      expect(@cd.description).to eq("test")
    end  
    it "should be able to get and set run time" do
      expect(@cd.run_time).to eq(0)
      @cd.run_time=120
      expect(@cd.run_time).to eq(120)
    end   
  end

	describe "Methods" do
    it "should be able to stock" do
      result = @cd.stock 5
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @cd.sell 6
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @cd.sell 3
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(2)
    end    
  end


end