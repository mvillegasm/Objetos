class Product
  attr_reader :name, :sizes, :new_catalog
  def initialize(name, *sizes)
    @name = name
    @sizes = *sizes.map {|size| size.to_i}
  end

  def filtered(object)
    @new_catalog = object.sizes[0..-2]
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each do |object|
  object.filtered(object)
end

new_names = []
new_sizes = []

products_list.each do |new_name|
  new_names << new_name.name
end

products_list.each do |nuevo|
  new_sizes << nuevo.new_catalog
end

new_product_list = new_names.zip(new_sizes)

nuevo_catalogo = []
new_product_list.each do |row|
  nuevo_catalogo << row.join(', ')
end

File.open('nuevo_catalogo.txt', 'w') do |file|
  file.puts nuevo_catalogo
end
