const Review = (function (){
  var id = 0
  return class Review{
    constructor(customer, restaurant){
      this.customer = customer
      customer.add_review(this)
      this.restaurant = restaurant
      this.id = ++id
      store.reviews.push(this)
    }
  }
}())

Review.prototype.all = function() {
  return store.reviews
};
