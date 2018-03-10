class SomeType {
  var v: String { didSet { print(#function, v) } }
  func changeV() {
    v = "change in \(#function)"
  }
  
  init() {
    defer { v = "🕊 in defer" }
    v = "🐱"
    v = "🐶"
  }
  
  deinit {
    defer { v = "goodbye 🕊 in defer" }
    changeV()
    _ = { v = "goodbye 🐶 in block" }()
  }
}

SomeType()
