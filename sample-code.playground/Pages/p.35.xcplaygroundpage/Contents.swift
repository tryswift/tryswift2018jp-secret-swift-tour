func f(_ arg: inout String) {
  arg = "🐥"
  arg = "🐓"
}

var testString = "🥚" {
  didSet {
    print("changed: \(testString)")
  }
}

f(&testString)
