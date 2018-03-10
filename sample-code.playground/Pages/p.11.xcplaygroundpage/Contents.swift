precedencegroup FoldedIntoOptionalChaining {
  assignment: true
}

infix operator ⭐️: FoldedIntoOptionalChaining

func ⭐️ (left: Int, right: Int) -> Int {
  return left + right
}

// create an instance for `obj?.myVariable`
struct S {
  var myVariable: Int = 0
}

var obj: S? = S()
// ***

obj?.myVariable ⭐️ 5  // => Optional<Int>
1 ⭐️ 5  // => Int
