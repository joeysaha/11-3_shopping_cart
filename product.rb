class Product
  @@products = []

  def initialize(name, price)
    @name = name
    @price = price
    @tax = 1.13
  end

  def tax_change=(tax)
    @tax = tax
  end

  def tax
    @tax
  end

  def name
    @name
  end

  def price
    @price
  end

  def self.find(name, price)
    @newproduct = self.new(name, price)
    @@products << @newproduct
    puts "You've added #{name} to your list."
    @newproduct
  end

  def self.list
    @@products
  end

end

cabbage = Product.find("cabbage", 2.45)
lettuce = Product.find("lettuce", 2.11)
chicken = Product.find("chicken", 4.89)

puts Product.list.inspect

chicken.tax_change = 1.54

puts Product.list.inspect
