class Review

  @@all = []

  def initialize(review, customer, restaurant)
    @review = review
    @restaurant = restaurant
    @customer = customer
    @customer.add_restaurant(@restaurant)
    @customer.add_review(self, @restaurant)
    @@all << self
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

end
