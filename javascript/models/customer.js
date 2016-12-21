const Customer = (function (){
  var id = 0
  var all = []
  return class Customer{
    constructor(name){
      this.name = name
      this.reviews = []
      this.restaurants = []
      this.id = ++id
      store.customers.push(this)
    }

    add_review(review){
      this.reviews.push(review)
    }

    add_restaurant(restaurant){
      this.restaurants.push(restaurant)
    }

  }
}())

Customer.all = function() {
  return store.customers
};
