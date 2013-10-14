class BookInStock
  def initialize isbn, price
    raise ArgumentError,"The ISBN is empty" if "".eql?(isbn) 
    raise ArgumentError,"Invalid Price" if price <= 0
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn, :price
  
  def price_as_string
    "$"+("%#.2f" % @price)
  end
end