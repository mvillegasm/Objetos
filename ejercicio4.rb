class Dog
  def initialize(opts={})
    @name = opts[:nombre]
  end

  def ladrar
    puts "#{self.name} está ladrando"
  end
end
