fun isPerfect(e:string) : bool 
  e == "Perfect"


fun isGreat(e:string) : bool 
  e == "Great"


val input_falied = ["Perfect", "Great","Good","Bad", "Miss"]
val full_combo = ["Perfect", "Great", "Great"]
val all_perfect = ["Perfect","Perfect","Perfect"]

fun calc(s: list<string>){
     if all(map( s, fn(i) {return isPerfect(i) } ),fn(x) {return x}) then "All Perfect"
     elif all(map(s, fn(i) {return isPerfect(i)|| isGreat(i)} ), fn(x) {return x}) then "Full Combo" 
     else "Failed"
}

fun main()
    calc(input_falied).println 
    calc(full_combo).println
    calc(all_perfect).println
   