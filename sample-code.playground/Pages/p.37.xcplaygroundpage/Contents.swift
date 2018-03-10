import Foundation

func f(_ arg: inout String) {
  arg = "🐥"
  sleep(2)
  arg = "🐓"
}

var testString = "🥚" {
  didSet {
    print("changed: \(testString)")
  }
}
DispatchQueue.global().asyncAfter(deadline: .now() + .seconds(1)) {
  print("current testString: \(testString)")
}
f(&testString)
