// this works well - also take a shot at the recursive solution

function palindrome(string){

  var array = string.split("")

  for(let i = 0; i < array.length / 2; i++){
    let other = array.length - i - 1
    if(array[i] != array[other]){
      return false
    }
  }

  return true

}

"Big O = 0(n) because it only runs through the array once"
