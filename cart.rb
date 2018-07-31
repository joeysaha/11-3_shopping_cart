require './product.rb'

class Cart

  def self.shopping_list
    @@list = Product.list
  end

  def self.remove(name)
    puts Product.list.delete_if {|prod| prod.name == name}
  end

  def self.price_no_tax
    cost = []
    Product.list.each do |product|
      cost << product.price
    end
    puts cost
    puts "Your prices are #{cost.sum}."
  end

  def self.price_w_tax
    cost = []
    Product.list.each do |product|
      cost << product.price*product.tax
    end
    puts cost
    puts "Your prices are #{cost.sum}."
  end

end

# Product.list
puts Cart.shopping_list.inspect
puts Cart.price_no_tax
puts Cart.price_w_tax
Cart.remove("chicken")
puts Cart.shopping_list.inspect
