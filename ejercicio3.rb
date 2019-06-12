# class Store
#   def initialize(name)
#     name = @name
#   end
# end
#
# store = store.new('Tienda 1')
# puts store.name

class Store
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

store = Store.new('Tienda 1')
puts store.name
