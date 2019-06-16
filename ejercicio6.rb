# class Product
# def initialize(name, large, medium, small, xsmall)
# @name = name
# @large = large
# @medium = medium
# @small = small
# @xsmall = xsmall
# end
# end
# products_list = []
# data = []
# File.open('catalogo.txt', 'r') { |file| data = file.readlines}
# data.each do |prod|
# ls = prod.split(', ')
# products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
# end
# puts products_list

class Product
  attr_reader :name, :sizes
  def initialize(name, *sizes)
    @name = name
    @sizes = *sizes.map {|size| sizes.to_i}
  end

  def average
    @sizes.sum
    @sizes.sum / @sizes.length
  end
end

ls = prod.split(', ')
products_list << Product.new(*ls)

print products_list[0].average

product_list.each do
  puts "El promedio de #{product.name} es #{product.average}"
end
