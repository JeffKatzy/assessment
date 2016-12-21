class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @customers = []
    @reviews = []
  end

  def self.all
    @@all
  end

  def customers
    @customers
  end

  def reviews
    @reviews
  end

end
