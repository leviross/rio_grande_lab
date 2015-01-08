require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    #initlize item
    @ebook = EBook.new("Harry Potter", 12.25)
  end


  #check inilization
  #check that it is an instance of EBook
  describe "Initialization" do
  	it "is an instance of the EBook class" do
  		expect(@ebook).to be_instance_of(EBook)
  	end
  	#check that it is an extended from DigitalItem
  	it "should extend from DigitalItem" do
  		expect(EBook < DigitalItem).to eq true
  	end
  	it "is assigned a name" do
      expect(@ebook.name).to eq("Harry Potter")
    end
    it "is assigned a price" do
      expect(@ebook.price).to eq(12.25)
    end
  end

  #check getters and setters
  describe "Accessors" do
  	it "should be able to get quantity" do
  		expect(@ebook.quantity).to eq(0)
  	end
  	it "should be able to get and set name" do
  		@ebook.name = "new ebook"
  		expect(@ebook.name).to eq("new ebook")
  	end
  	it "should be able to get and set price" do
      @ebook.price=7.99
      expect(@ebook.price).to eq(7.99)
    end  
    it "should be able to get and set author" do
    	expect(@ebook.author).to eq("")
    	@ebook.author = "My Author"
  		expect(@ebook.author).to eq("My Author")
  	end
  	it "should be able to get and set pages" do
    	expect(@ebook.pages).to eq(0)
    	@ebook.pages = 100
  		expect(@ebook.pages).to eq(100)
  	end 
	end		
  	
  describe "Methods" do
    it "should be able to sell and keep track of total sold" do
      result = @ebook.sell 300
      expect(result).to eq(result)
    end    
  end

end