require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    #initlize item
    @book = Book.new("War and Peace",12.99)
  end


  #check inilization
  #check that it is an instance of Book
  describe "Initialization" do
  	it "is an instance of the Book class" do
  		expect(@book).to be_instance_of(Book)
  	end
  	#check that it is an extended from Item
  	it "should extend from Item" do
  		expect(Book < Item).to eq true
  	end
  	it "is assigned a name" do
      expect(@book.name).to eq("War and Peace")
    end
    it "is assigned a price" do
      expect(@book.price).to eq(12.99)
    end
  end

  #check getters and setters
  describe "Accessors" do
  	it "should be able to get quantity" do
  		expect(@book.quantity).to eq(0)
  	end
  	it "should be able to get and set name" do
  		@book.name = "The Great Gatsby"
  		expect(@book.name).to eq("The Great Gatsby")
  	end
  	it "should be able to get and set price" do
      @book.price=44.99
      expect(@book.price).to eq(44.99)
    end   
    it "should be able to get and set description" do
      expect(@book.description).to eq("")
      @book.description="test"
      expect(@book.description).to eq("test")
    end 
    it "should be able to get and set author" do
    	expect(@book.author).to eq("")
    	@book.author = "My Author"
  		expect(@book.author).to eq("My Author")
  	end
  	it "should be able to get and set pages" do
    	expect(@book.pages).to eq(0)
    	@book.pages = 100
  		expect(@book.pages).to eq(100)
  	end

	end		
  	
  describe "Methods" do
    it "should be able to stock" do
      result = @book.stock 5
      expect(result).to eq(true)
      expect(@book.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @book.sell 6
      expect(result).to eq(false)
      expect(@book.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @book.sell 3
      expect(result).to eq(true)
      expect(@book.quantity).to eq(2)
    end    
  end


end