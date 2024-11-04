fun isPerfect(e:string) : bool {
  e == "Perfect"
}

fun isGreat(e:string) : bool {
  e == "Great"
}

val input = ["Perfect", "Great"]
fun main()
    map( input, fn(i) {println(i) return isPerfect(i)} )