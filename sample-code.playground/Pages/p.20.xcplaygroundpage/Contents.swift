class SomeClass {
  lazy var v: Int = {
    preconditionFailure("Variable '\(#function)'                      used before being initialized")
  }()
}
