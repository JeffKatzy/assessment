const Restaurant = (function (){
  var id = 0
  return class Restaurant{
    constructor(name){
      this.name = name
      this.id = ++id
      store.restaurants.push(this)
    }

    customers(){
      var customers = store.customers.filter(customer => {
        if (customer.restaurants.includes(this)){
          return customer
        }
      })
      return customers
    }

    reviews(){
      var reviews = store.reviews.filter(review => {
        if (review.restaurants.includes(this)){
          return review
        }
      })
      return reviews
    }

  }

}())

Restaurant.prototype.all = function() {
  return store.restaurants
};
