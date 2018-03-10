struct S {
  var myVariable: Int = 0
}

var obj: S? = S()
//var obj: S? = nil
obj?.myVariable = 50

// What is the type of return value?
let r = (obj?.myVariable = 50)

(obj?.myVariable = 50)
  .map { print(obj) }
