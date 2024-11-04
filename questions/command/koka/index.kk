fun isPerfect(e:string) : bool 
  e == "Perfect"


fun isGreat(e:string) : bool 
  e == "Great"


val input = ["Perfect", "Great","Good","Bad", "Miss"]

fun main(){
     if all(map( input, fn(i) {return isPerfect(i) } ),fn(x) {return x}) then "All Perfect"
     elif all(map(input, fn(i) {return isPerfect(i)|| isGreat(i)} ), fn(x) {return x}) then "Full Combo" 
     else "Failed"
}