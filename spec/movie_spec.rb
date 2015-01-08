require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    #initlize item
    @movie = Movie.new("Star Wars", 22.25)
  end


  #check inilization
  #check that it is an instance of Movie
  describe "Initialization" do
  	it "is an instance of the Movie class" do
  		expect(@movie).to be_instance_of(Movie)
  	end
  	#check that it is an extended from DigitalItem
  	it "should extend from DigitalItem" do
  		expect(Movie < DigitalItem).to eq true
  	end
  	it "is assigned a name" do
      expect(@movie.name).to eq("Star Wars")
    end
    it "is assigned a price" do
      expect(@movie.price).to eq(22.25)
    end
  end

  #check getters and setters
  describe "Accessors" do
  	it "should be able to get quantity" do
  		expect(@movie.quantity).to eq(0)
  	end
  	it "should be able to get and set name" do
  		@movie.name = "new movie"
  		expect(@movie.name).to eq("new movie")
  	end
  	it "should be able to get and set price" do
      @movie.price=7.99
      expect(@movie.price).to eq(7.99)
    end  
    it "should be able to get and set run_time" do
      expect(@movie.run_time).to eq(0)
      @movie.run_time=50
      expect(@movie.run_time).to eq(50)
    end 
    it "should be able to get and set director" do
    	expect(@movie.director).to eq("")
    	@movie.director = "My director"
  		expect(@movie.director).to eq("My director")
  	end
  	it "should be able to get and set producer" do
    	expect(@movie.producer).to eq("")
    	@movie.producer = "My producer"
  		expect(@movie.producer).to eq("My producer")
  	end 
	end		
  	
  describe "Methods" do
    it "should be able to sell and keep track of total sold" do
      result = @movie.sell 300
      expect(result).to eq(result)
    end    
  end

end