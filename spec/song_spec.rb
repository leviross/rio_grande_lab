require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    #initlize item
    @song = Song.new("November Rain", 17.25)
  end


  #check inilization
  #check that it is an instance of Movie
  describe "Initialization" do
  	it "is an instance of the Song class" do
  		expect(@song).to be_instance_of(Song)
  	end
  	#check that it is an extended from DigitalItem
  	it "should extend from DigitalItem" do
  		expect(Song < DigitalItem).to eq true
  	end
  	it "is assigned a name" do
      expect(@song.name).to eq("November Rain")
    end
    it "is assigned a price" do
      expect(@song.price).to eq(17.25)
    end
  end

  #check getters and setters
  describe "Accessors" do
  	it "should be able to get quantity" do
  		expect(@song.quantity).to eq(0)
  	end
  	it "should be able to get and set name" do
  		@song.name = "new song"
  		expect(@song.name).to eq("new song")
  	end
  	it "should be able to get and set price" do
      @song.price=7.99
      expect(@song.price).to eq(7.99)
    end  
    it "should be able to get and set run_time" do
      expect(@song.run_time).to eq(0)
      @song.run_time=50
      expect(@song.run_time).to eq(50)
    end 
    it "should be able to get and set artist" do
    	expect(@song.artist).to eq("")
    	@song.artist = "My artist"
  		expect(@song.artist).to eq("My artist")
  	end
  	
	end		
  	
  describe "Methods" do
    it "should be able to sell and keep track of total sold" do
      result = @song.sell 300
      expect(result).to eq(result)
    end    
  end

end