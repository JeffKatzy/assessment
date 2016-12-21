function reverse(string){

  var array = string.split("")

  for(let i = 0; i < array.length / 2; i++){
    let other = array.length - i - 1
    let temp = array[i]
    array[i] = array[other]
    array[other] = temp
  }

  return array.join("")

}

=> seat

other = 3
temp = s
array[i] = t
array[other] = s
  => teas

other = 2
temp = e
array[i] = a
array[other] = e
  =>taes

"Big O = 0(n) because it only runs through the array once"
