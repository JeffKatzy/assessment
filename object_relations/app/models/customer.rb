class Customer

  attr_accessor :name, :restaurants, :reviews

  @@all = []

  def initialize(name)
    @name = name
    @restaurants = []
    @reviews = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    
    @@all.find { |cust| cust.name == name }
  end

  def restaurants
    @restaurants
  end

  def add_review(review, restaurant)
    @reviews << review
#     instead of separately storing the reviews on the restaurant, you can just select the reviews that have the right restaurant.id or name
    restaurant.reviews << review
  end

  def add_restaurant(restaurant)

    @restaurants << restaurant
    restaurant.customers << self
  end

end

# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer
